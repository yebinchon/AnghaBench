
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ export_t ;


 char* rva_to_ptr (int ) ;
 int strcmp (char*,char*) ;

int export_compare_func(const void *a, const void *b)
{
   const export_t *ap = a;
   const export_t *bp = b;
   char *an = rva_to_ptr(ap->name);
   char *bn = rva_to_ptr(bp->name);
   return strcmp(an, bn);
}
