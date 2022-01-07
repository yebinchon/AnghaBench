
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_css_selector ;


 int count_selector_atts (int *) ;
 int count_selector_ids (int *) ;
 int count_selector_names (int *) ;

__attribute__((used)) static int
selector_specificity(fz_css_selector *sel, int important)
{
 int b = count_selector_ids(sel);
 int c = count_selector_atts(sel);
 int d = count_selector_names(sel);
 return important * 1000 + b * 100 + c * 10 + d;
}
