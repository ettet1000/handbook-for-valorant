import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valorant_tips/constants/app_colors.dart';
import 'package:valorant_tips/widgets/agents_screen/Ability/abiliity_list.dart';
import 'package:valorant_tips/widgets/agents_screen/Ability/abilities_card.dart';

import '../../../models/agent.dart';
import 'agent_info.dart';

class AgentsDetail extends StatefulWidget {
  AgentsDetail({Key? key, required this.agent}) : super(key: key);

  Agent agent;

  @override
  State<AgentsDetail> createState() => _AgentsDetailState();
}

class _AgentsDetailState extends State<AgentsDetail> {
  @override
  Widget build(BuildContext context) {
    // Agent Abilities
    List<Abilities> agentAbilities = [];

    // Model to agent abilities list
    widget.agent.abilities?.forEach((element) {
      agentAbilities.add(element);
    });

    // Scaffold
    return SafeArea(
      minimum: EdgeInsets.only(top: 25.h),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AgentInfo(
                agent: widget.agent,
              ),
              AbiliityList(abilityList: agentAbilities),
            ],
          ),
        ),
      ),
    );
  }
}
