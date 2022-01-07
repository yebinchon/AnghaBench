
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_visitor_data {int (* visitor ) (int ,struct ref const*) ;int data; } ;
struct ref {int valid; } ;


 int stub1 (int ,struct ref const*) ;

__attribute__((used)) static bool
foreach_ref_visitor(void *data, void *value)
{
 struct ref_visitor_data *visitor_data = data;
 const struct ref *ref = value;

 if (!ref->valid)
  return 1;
 return visitor_data->visitor(visitor_data->data, ref);
}
