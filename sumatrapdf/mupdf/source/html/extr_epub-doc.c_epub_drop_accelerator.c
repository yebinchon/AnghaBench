
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {struct TYPE_4__* pages_in_chapter; } ;
typedef TYPE_1__ epub_accelerator ;


 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
epub_drop_accelerator(fz_context *ctx, epub_accelerator *acc)
{
 if (acc == ((void*)0))
  return;

 fz_free(ctx, acc->pages_in_chapter);
 fz_free(ctx, acc);
}
