
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct keyval {TYPE_1__* k; } ;
struct TYPE_5__ {char* n; } ;
struct TYPE_4__ {scalar_t__ kind; } ;


 TYPE_2__* NAME (TYPE_1__*) ;
 TYPE_1__* PDF_LIMIT ;
 scalar_t__ PDF_NAME ;
 char** PDF_NAME_LIST ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int keyvalcmp(const void *ap, const void *bp)
{
 const struct keyval *a = ap;
 const struct keyval *b = bp;
 const char *an;
 const char *bn;



 if (a->k < PDF_LIMIT)
  an = PDF_NAME_LIST[(intptr_t)a->k];
 else if (a->k >= PDF_LIMIT && a->k->kind == PDF_NAME)
  an = NAME(a->k)->n;
 else
  return 0;

 if (b->k < PDF_LIMIT)
  bn = PDF_NAME_LIST[(intptr_t)b->k];
 else if (b->k >= PDF_LIMIT && b->k->kind == PDF_NAME)
  bn = NAME(b->k)->n;
 else
  return 0;

 return strcmp(an, bn);
}
