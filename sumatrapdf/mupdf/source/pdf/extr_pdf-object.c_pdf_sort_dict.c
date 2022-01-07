
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct keyval {int dummy; } ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ pdf_obj ;
typedef int fz_context ;
struct TYPE_8__ {int len; int items; } ;


 TYPE_5__* DICT (TYPE_1__*) ;
 int OBJ_IS_DICT (TYPE_1__*) ;
 int PDF_FLAGS_SORTED ;
 int RESOLVE (TYPE_1__*) ;
 int keyvalcmp ;
 int qsort (int ,int ,int,int ) ;

void
pdf_sort_dict(fz_context *ctx, pdf_obj *obj)
{
 RESOLVE(obj);
 if (!OBJ_IS_DICT(obj))
  return;
 if (!(obj->flags & PDF_FLAGS_SORTED))
 {
  qsort(DICT(obj)->items, DICT(obj)->len, sizeof(struct keyval), keyvalcmp);
  obj->flags |= PDF_FLAGS_SORTED;
 }
}
