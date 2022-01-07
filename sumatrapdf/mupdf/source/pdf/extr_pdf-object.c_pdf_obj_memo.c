
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

int
pdf_obj_memo(fz_context *ctx, pdf_obj *obj, int bit, int *memo)
{
 if (obj < PDF_LIMIT)
  return 0;
 bit <<= 1;
 if (!(obj->flags & (PDF_FLAGS_MEMO_BASE<<bit)))
  return 0;
 *memo = !!(obj->flags & (PDF_FLAGS_MEMO_BASE_BOOL<<bit));
 return 1;
}
