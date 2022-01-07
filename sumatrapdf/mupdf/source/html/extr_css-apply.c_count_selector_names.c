
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; struct TYPE_3__* right; struct TYPE_3__* left; int cond; } ;
typedef TYPE_1__ fz_css_selector ;


 int count_condition_names (int ) ;

__attribute__((used)) static int
count_selector_names(fz_css_selector *sel)
{
 int n = count_condition_names(sel->cond);
 if (sel->left && sel->right)
 {
  n += count_selector_names(sel->left);
  n += count_selector_names(sel->right);
 }
 else if (sel->name)
 {
  n ++;
 }
 return n;
}
