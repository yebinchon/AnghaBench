
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int ofs; scalar_t__ tp; } ;
struct TYPE_9__ {int size; int info; int name; scalar_t__ sib; } ;
typedef size_t MSize ;
typedef scalar_t__ IRType ;
typedef scalar_t__ CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef TYPE_2__ CRecMemList ;


 size_t CREC_COPY_MAXUNROLL ;
 scalar_t__ IRT_CDATA ;
 scalar_t__ crec_ct2irt (int *,TYPE_1__*) ;
 TYPE_1__* ctype_get (int *,scalar_t__) ;
 scalar_t__ ctype_iscomplex (int ) ;
 int ctype_isconstval (int ) ;
 scalar_t__ ctype_isfield (int ) ;
 TYPE_1__* ctype_rawchild (int *,TYPE_1__*) ;
 int gcref (int ) ;

__attribute__((used)) static MSize crec_copy_struct(CRecMemList *ml, CTState *cts, CType *ct)
{
  CTypeID fid = ct->sib;
  MSize mlp = 0;
  while (fid) {
    CType *df = ctype_get(cts, fid);
    fid = df->sib;
    if (ctype_isfield(df->info)) {
      CType *cct;
      IRType tp;
      if (!gcref(df->name)) continue;
      cct = ctype_rawchild(cts, df);
      tp = crec_ct2irt(cts, cct);
      if (tp == IRT_CDATA) return 0;
      if (mlp >= CREC_COPY_MAXUNROLL) return 0;
      ml[mlp].ofs = df->size;
      ml[mlp].tp = tp;
      mlp++;
      if (ctype_iscomplex(cct->info)) {
 if (mlp >= CREC_COPY_MAXUNROLL) return 0;
 ml[mlp].ofs = df->size + (cct->size >> 1);
 ml[mlp].tp = tp;
 mlp++;
      }
    } else if (!ctype_isconstval(df->info)) {

      return 0;
    }
  }
  return mlp;
}
