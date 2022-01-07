
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* right; struct TYPE_3__* left; int cond; } ;
typedef TYPE_1__ fz_css_selector ;


 int count_condition_atts (int ) ;

__attribute__((used)) static int
count_selector_atts(fz_css_selector *sel)
{
 int n = count_condition_atts(sel->cond);
 if (sel->left && sel->right)
 {
  n += count_selector_atts(sel->left);
  n += count_selector_atts(sel->right);
 }
 return n;
}
