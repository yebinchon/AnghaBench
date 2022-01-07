
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* current_token; struct TYPE_8__* tokens; } ;
typedef TYPE_1__ UdevRuleToken ;
typedef TYPE_1__ UdevRuleLine ;


 int LIST_APPEND (int ,TYPE_1__*,TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int tokens ;

__attribute__((used)) static void rule_line_append_token(UdevRuleLine *rule_line, UdevRuleToken *token) {
        assert(rule_line);
        assert(token);

        if (rule_line->current_token)
                LIST_APPEND(tokens, rule_line->current_token, token);
        else
                LIST_APPEND(tokens, rule_line->tokens, token);

        rule_line->current_token = token;
}
