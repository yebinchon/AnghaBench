
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;


 int refs_by_id ;
 struct ref const* string_map_get (int *,char const*) ;

const struct ref *
get_ref_list(const char *id)
{
 return string_map_get(&refs_by_id, id);
}
