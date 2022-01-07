
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_visitor_data {void* member_1; int member_0; } ;
typedef int ref_visitor_fn ;


 int foreach_ref_visitor ;
 int refs_by_name ;
 int string_map_foreach (int *,int ,struct ref_visitor_data*) ;

void
foreach_ref(ref_visitor_fn visitor, void *data)
{
 struct ref_visitor_data visitor_data = { visitor, data };

 string_map_foreach(&refs_by_name, foreach_ref_visitor, &visitor_data);
}
