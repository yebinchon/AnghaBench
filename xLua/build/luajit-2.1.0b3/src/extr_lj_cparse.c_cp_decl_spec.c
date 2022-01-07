
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_22__ {int attr; int specattr; scalar_t__ fattr; scalar_t__ specfattr; scalar_t__ pos; scalar_t__ specpos; TYPE_1__* stack; scalar_t__ top; int * redir; int * name; int mode; TYPE_4__* cp; } ;
struct TYPE_20__ {scalar_t__ id; } ;
struct TYPE_21__ {unsigned int tok; TYPE_3__ val; TYPE_2__* ct; int mode; } ;
struct TYPE_19__ {int size; int info; } ;
struct TYPE_18__ {scalar_t__ next; } ;
typedef scalar_t__ CTypeID ;
typedef int CTInfo ;
typedef int CPscl ;
typedef TYPE_4__ CPState ;
typedef TYPE_5__ CPDecl ;


 int CDF_BOOL ;
 int CDF_CHAR ;
 int CDF_COMPLEX ;
 int CDF_FP ;
 int CDF_INT ;
 int CDF_LONG ;
 int CDF_LONGLONG ;
 int CDF_SCL ;
 int CDF_SHORT ;
 int CDF_SIGNED ;
 int CDF_UNSIGNED ;
 int CDF_VOID ;
 scalar_t__ CTALIGN (int ) ;
 int CTF_BOOL ;
 int CTF_FP ;
 int CTF_LONG ;
 int CTF_QUAL ;
 int CTF_UCHAR ;
 int CTF_UNION ;
 int CTF_UNSIGNED ;
 scalar_t__ CTID_COMPLEX_DOUBLE ;
 scalar_t__ CTID_COMPLEX_FLOAT ;
 int CTINFO (int ,int) ;

 unsigned int CTOK_FIRSTDECL ;
 scalar_t__ CTOK_FIRSTSCL ;

 unsigned int CTOK_LASTDECLFLAG ;


 int CTSIZE_INVALID ;
 int CT_NUM ;
 int CT_STRUCT ;
 int CT_VOID ;
 int LJ_ERR_FFI_BADSCL ;
 int LJ_ERR_FFI_DECLSPEC ;
 int LJ_ERR_FFI_INVTYPE ;
 int cp_decl_attributes (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ cp_decl_enum (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ cp_decl_struct (TYPE_4__*,TYPE_5__*,int) ;
 int cp_errmsg (TYPE_4__*,scalar_t__,int ) ;
 int cp_next (TYPE_4__*) ;
 int cp_push (TYPE_5__*,int,int) ;
 int cp_push_type (TYPE_5__*,scalar_t__) ;
 scalar_t__ ctype_cid (int ) ;
 int ctype_istypedef (int ) ;
 int lj_fls (int) ;
 int lua_assert (int) ;

__attribute__((used)) static CPscl cp_decl_spec(CPState *cp, CPDecl *decl, CPscl scl)
{
  uint32_t cds = 0, sz = 0;
  CTypeID tdef = 0;

  decl->cp = cp;
  decl->mode = cp->mode;
  decl->name = ((void*)0);
  decl->redir = ((void*)0);
  decl->attr = 0;
  decl->fattr = 0;
  decl->pos = decl->top = 0;
  decl->stack[0].next = 0;

  for (;;) {
    cp_decl_attributes(cp, decl);
    if (cp->tok >= CTOK_FIRSTDECL && cp->tok <= CTOK_LASTDECLFLAG) {
      uint32_t cbit;
      if (cp->ct->size) {
 if (sz) goto end_decl;
 sz = cp->ct->size;
      }
      cbit = (1u << (cp->tok - CTOK_FIRSTDECL));
      cds = cds | cbit | ((cbit & cds & CDF_LONG) << 1);
      if (cp->tok >= CTOK_FIRSTSCL) {
 if (!(scl & cbit)) cp_errmsg(cp, cp->tok, LJ_ERR_FFI_BADSCL);
      } else if (tdef) {
 goto end_decl;
      }
      cp_next(cp);
      continue;
    }
    if (sz || tdef ||
 (cds & (CDF_SHORT|CDF_LONG|CDF_SIGNED|CDF_UNSIGNED|CDF_COMPLEX)))
      break;
    switch (cp->tok) {
    case 129:
      tdef = cp_decl_struct(cp, decl, CTINFO(CT_STRUCT, 0));
      continue;
    case 128:
      tdef = cp_decl_struct(cp, decl, CTINFO(CT_STRUCT, CTF_UNION));
      continue;
    case 131:
      tdef = cp_decl_enum(cp, decl);
      continue;
    case 130:
      if (ctype_istypedef(cp->ct->info)) {
 tdef = ctype_cid(cp->ct->info);
 cp_next(cp);
 continue;
      }
      break;
    case '$':
      tdef = cp->val.id;
      cp_next(cp);
      continue;
    default:
      break;
    }
    break;
  }
end_decl:

  if ((cds & CDF_COMPLEX))
    tdef = sz == 4 ? CTID_COMPLEX_FLOAT : CTID_COMPLEX_DOUBLE;

  if (tdef) {
    cp_push_type(decl, tdef);
  } else if ((cds & CDF_VOID)) {
    cp_push(decl, CTINFO(CT_VOID, (decl->attr & CTF_QUAL)), CTSIZE_INVALID);
    decl->attr &= ~CTF_QUAL;
  } else {

    CTInfo info = CTINFO(CT_NUM, (cds & CDF_UNSIGNED) ? CTF_UNSIGNED : 0);
    if ((cds & CDF_BOOL)) {
      if ((cds & ~(CDF_SCL|CDF_BOOL|CDF_INT|CDF_SIGNED|CDF_UNSIGNED)))
 cp_errmsg(cp, 0, LJ_ERR_FFI_INVTYPE);
      info |= CTF_BOOL;
      if (!(cds & CDF_SIGNED)) info |= CTF_UNSIGNED;
      if (!sz) {
 sz = 1;
      }
    } else if ((cds & CDF_FP)) {
      info = CTINFO(CT_NUM, CTF_FP);
      if ((cds & CDF_LONG)) sz = sizeof(long double);
    } else if ((cds & CDF_CHAR)) {
      if ((cds & (CDF_CHAR|CDF_SIGNED|CDF_UNSIGNED)) == CDF_CHAR)
 info |= CTF_UCHAR;
    } else if ((cds & CDF_SHORT)) {
      sz = sizeof(short);
    } else if ((cds & CDF_LONGLONG)) {
      sz = 8;
    } else if ((cds & CDF_LONG)) {
      info |= CTF_LONG;
      sz = sizeof(long);
    } else if (!sz) {
      if (!(cds & (CDF_SIGNED|CDF_UNSIGNED)))
 cp_errmsg(cp, cp->tok, LJ_ERR_FFI_DECLSPEC);
      sz = sizeof(int);
    }
    lua_assert(sz != 0);
    info += CTALIGN(lj_fls(sz));
    info += (decl->attr & CTF_QUAL);
    cp_push(decl, info, sz);
    decl->attr &= ~CTF_QUAL;
  }
  decl->specpos = decl->pos;
  decl->specattr = decl->attr;
  decl->specfattr = decl->fattr;
  return (cds & CDF_SCL);
}
