
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {int max_chapters; int* pages_in_chapter; } ;
typedef TYPE_1__ epub_accelerator ;



__attribute__((used)) static void
invalidate_accelerator(fz_context *ctx, epub_accelerator *acc)
{
 int i;

 for (i = 0; i < acc->max_chapters; i++)
  acc->pages_in_chapter[i] = -1;
}
