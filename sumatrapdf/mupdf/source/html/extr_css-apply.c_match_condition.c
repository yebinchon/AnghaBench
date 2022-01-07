
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_xml ;
struct TYPE_3__ {int type; char* key; struct TYPE_3__* next; int val; } ;
typedef TYPE_1__ fz_css_condition ;


 int match_att_exists_condition (int *,char*) ;
 int match_att_has_condition (int *,char*,int ) ;
 int match_att_is_condition (int *,char*,int ) ;

__attribute__((used)) static int
match_condition(fz_css_condition *cond, fz_xml *node)
{
 if (!cond)
  return 1;

 switch (cond->type) {
 default: return 0;
 case ':': return 0;
 case '#': if (!match_att_is_condition(node, "id", cond->val)) return 0; break;
 case '.': if (!match_att_has_condition(node, "class", cond->val)) return 0; break;
 case '[': if (!match_att_exists_condition(node, cond->key)) return 0; break;
 case '=': if (!match_att_is_condition(node, cond->key, cond->val)) return 0; break;
 case '~': if (!match_att_has_condition(node, cond->key, cond->val)) return 0; break;
 case '|': if (!match_att_is_condition(node, cond->key, cond->val)) return 0; break;
 }

 return match_condition(cond->next, node);
}
