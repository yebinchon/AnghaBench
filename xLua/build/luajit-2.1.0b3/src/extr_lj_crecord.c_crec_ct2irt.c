
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int info; int size; } ;
typedef scalar_t__ IRType ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 int CTF_FP ;
 int CTF_UNSIGNED ;
 scalar_t__ IRT_CDATA ;
 scalar_t__ IRT_FLOAT ;
 scalar_t__ IRT_I8 ;
 scalar_t__ IRT_NUM ;
 scalar_t__ IRT_P32 ;
 scalar_t__ IRT_P64 ;
 scalar_t__ LJ_64 ;
 scalar_t__ LJ_LIKELY (int ) ;
 TYPE_1__* ctype_child (int *,TYPE_1__*) ;
 scalar_t__ ctype_iscomplex (int) ;
 scalar_t__ ctype_isenum (int) ;
 int ctype_isnum (int) ;
 scalar_t__ ctype_isptr (int) ;
 int lj_fls (int) ;

__attribute__((used)) static IRType crec_ct2irt(CTState *cts, CType *ct)
{
  if (ctype_isenum(ct->info)) ct = ctype_child(cts, ct);
  if (LJ_LIKELY(ctype_isnum(ct->info))) {
    if ((ct->info & CTF_FP)) {
      if (ct->size == sizeof(double))
 return IRT_NUM;
      else if (ct->size == sizeof(float))
 return IRT_FLOAT;
    } else {
      uint32_t b = lj_fls(ct->size);
      if (b <= 3)
 return IRT_I8 + 2*b + ((ct->info & CTF_UNSIGNED) ? 1 : 0);
    }
  } else if (ctype_isptr(ct->info)) {
    return (LJ_64 && ct->size == 8) ? IRT_P64 : IRT_P32;
  } else if (ctype_iscomplex(ct->info)) {
    if (ct->size == 2*sizeof(double))
      return IRT_NUM;
    else if (ct->size == 2*sizeof(float))
      return IRT_FLOAT;
  }
  return IRT_CDATA;
}
