
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_ref {int title; int link; struct link_ref* next; } ;


 size_t REF_TABLE_SIZE ;
 int bufrelease (int ) ;
 int free (struct link_ref*) ;

__attribute__((used)) static void
free_link_refs(struct link_ref **references)
{
 size_t i;

 for (i = 0; i < REF_TABLE_SIZE; ++i) {
  struct link_ref *r = references[i];
  struct link_ref *next;

  while (r) {
   next = r->next;
   bufrelease(r->link);
   bufrelease(r->title);
   free(r);
   r = next;
  }
 }
}
