
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_data {int * matches; struct criteria* criteria; } ;
struct criteria {int dummy; } ;
typedef int list_t ;


 int * create_list () ;
 int criteria_get_views_iterator ;
 int root_for_each_container (int ,struct match_data*) ;

list_t *criteria_get_views(struct criteria *criteria) {
 list_t *matches = create_list();
 struct match_data data = {
  .criteria = criteria,
  .matches = matches,
 };
 root_for_each_container(criteria_get_views_iterator, &data);
 return matches;
}
