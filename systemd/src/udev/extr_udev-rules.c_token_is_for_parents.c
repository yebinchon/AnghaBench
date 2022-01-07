
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ UdevRuleToken ;


 scalar_t__ TK_M_PARENTS_KERNEL ;
 scalar_t__ TK_M_PARENTS_TAG ;

__attribute__((used)) static bool token_is_for_parents(UdevRuleToken *token) {
        return token->type >= TK_M_PARENTS_KERNEL && token->type <= TK_M_PARENTS_TAG;
}
