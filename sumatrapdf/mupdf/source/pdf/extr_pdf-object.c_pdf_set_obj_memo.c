
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ pdf_obj ;
typedef int fz_context ;


 int PDF_FLAGS_MEMO_BASE ;
 int PDF_FLAGS_MEMO_BASE_BOOL ;
 TYPE_1__* PDF_LIMIT ;

void
pdf_set_obj_memo(fz_context *ctx, pdf_obj *obj, int bit, int memo)
{
 if (obj < PDF_LIMIT)
  return;
 bit <<= 1;
 obj->flags |= PDF_FLAGS_MEMO_BASE << bit;
 if (memo)
  obj->flags |= PDF_FLAGS_MEMO_BASE_BOOL << bit;
 else
  obj->flags &= ~(PDF_FLAGS_MEMO_BASE_BOOL << bit);
}
