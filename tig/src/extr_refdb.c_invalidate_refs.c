
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int * next; scalar_t__ valid; } ;



__attribute__((used)) static bool
invalidate_refs(void *data, void *ref_)
{
 struct ref *ref = ref_;

 ref->valid = 0;
 ref->next = ((void*)0);
 return 1;
}
