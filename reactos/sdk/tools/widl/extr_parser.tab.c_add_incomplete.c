
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
struct typenode {int entry; int * type; } ;


 int incomplete_types ;
 int list_add_tail (int *,int *) ;
 struct typenode* xmalloc (int) ;

void add_incomplete(type_t *t)
{
  struct typenode *tn = xmalloc(sizeof *tn);
  tn->type = t;
  list_add_tail(&incomplete_types, &tn->entry);
}
