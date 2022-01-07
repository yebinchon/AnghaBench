
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int cap; int* object; } ;
typedef TYPE_1__ page_objects ;
typedef int fz_context ;


 TYPE_1__* fz_realloc (int *,TYPE_1__*,int) ;
 TYPE_1__* page_objects_create (int *) ;

__attribute__((used)) static void
page_objects_insert(fz_context *ctx, page_objects **ppo, int i)
{
 page_objects *po;


 if (*ppo == ((void*)0))
  *ppo = page_objects_create(ctx);

 po = *ppo;

 if (po->len == po->cap)
 {
  po = fz_realloc(ctx, po, sizeof(page_objects) + (po->cap*2 - 1)*sizeof(int));
  po->cap *= 2;
  *ppo = po;
 }
 po->object[po->len++] = i;
}
