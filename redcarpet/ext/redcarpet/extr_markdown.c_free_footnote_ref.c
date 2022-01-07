
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct footnote_ref {int contents; } ;


 int bufrelease (int ) ;
 int free (struct footnote_ref*) ;

__attribute__((used)) static void
free_footnote_ref(struct footnote_ref *ref)
{
 bufrelease(ref->contents);
 free(ref);
}
