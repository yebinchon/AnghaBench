
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cTValue ;
struct TYPE_5__ {int ctypeid; } ;
struct TYPE_4__ {int size; int info; } ;
typedef int CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 int CTALIGN_PTR ;
 int CTID_BOOL ;
 int CTID_DOUBLE ;
 int CTID_P_CCHAR ;
 int CTID_P_VOID ;
 int CTINFO (int ,int) ;
 int CTSIZE_PTR ;
 int CT_PTR ;
 TYPE_3__* cdataV (int *) ;
 int ctype_cid (int ) ;
 TYPE_1__* ctype_get (int *,int) ;
 scalar_t__ ctype_isfp (int ) ;
 scalar_t__ ctype_isfunc (int ) ;
 scalar_t__ ctype_isrefarray (int ) ;
 scalar_t__ ctype_isstruct (int ) ;
 int lj_ctype_intern (int *,int ,int ) ;
 scalar_t__ tvisbool (int *) ;
 scalar_t__ tviscdata (int *) ;
 scalar_t__ tvisnumber (int *) ;
 scalar_t__ tvisstr (int *) ;

CTypeID lj_ccall_ctid_vararg(CTState *cts, cTValue *o)
{
  if (tvisnumber(o)) {
    return CTID_DOUBLE;
  } else if (tviscdata(o)) {
    CTypeID id = cdataV(o)->ctypeid;
    CType *s = ctype_get(cts, id);
    if (ctype_isrefarray(s->info)) {
      return lj_ctype_intern(cts,
        CTINFO(CT_PTR, CTALIGN_PTR|ctype_cid(s->info)), CTSIZE_PTR);
    } else if (ctype_isstruct(s->info) || ctype_isfunc(s->info)) {

      return lj_ctype_intern(cts, CTINFO(CT_PTR, CTALIGN_PTR|id), CTSIZE_PTR);
    } else if (ctype_isfp(s->info) && s->size == sizeof(float)) {
      return CTID_DOUBLE;
    } else {
      return id;
    }
  } else if (tvisstr(o)) {
    return CTID_P_CCHAR;
  } else if (tvisbool(o)) {
    return CTID_BOOL;
  } else {
    return CTID_P_VOID;
  }
}
