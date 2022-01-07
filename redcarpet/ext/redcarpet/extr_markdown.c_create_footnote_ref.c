
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct footnote_ref {int id; } ;
struct footnote_list {int dummy; } ;


 struct footnote_ref* calloc (int,int) ;
 int hash_link_ref (int const*,size_t) ;

__attribute__((used)) static struct footnote_ref *
create_footnote_ref(struct footnote_list *list, const uint8_t *name, size_t name_size)
{
 struct footnote_ref *ref = calloc(1, sizeof(struct footnote_ref));
 if (!ref)
  return ((void*)0);

 ref->id = hash_link_ref(name, name_size);

 return ref;
}
