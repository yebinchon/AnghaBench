
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int attr; size_t pos; TYPE_2__* stack; TYPE_1__* cp; } ;
struct TYPE_10__ {int info; int size; int sib; } ;
struct TYPE_9__ {int sib; } ;
struct TYPE_8__ {int cts; } ;
typedef int CTypeID ;
typedef TYPE_3__ CType ;
typedef int CTSize ;
typedef int CTInfo ;
typedef TYPE_4__ CPDecl ;


 int CTATTRIB (int ) ;
 int CTA_QUAL ;
 int CTF_COMPLEX ;
 int CTF_QUAL ;
 int CTF_VECTOR ;
 int CTINFO (int,int ) ;
 int CTMASK_CID ;





 int CT_TYPEDEF ;
 size_t cp_push (TYPE_4__*,int,int) ;
 int ctype_cid (int) ;
 TYPE_3__* ctype_get (int ,int ) ;
 int ctype_isxattrib (int,int ) ;
 int ctype_type (int) ;

__attribute__((used)) static void cp_push_type(CPDecl *decl, CTypeID id)
{
  CType *ct = ctype_get(decl->cp->cts, id);
  CTInfo info = ct->info;
  CTSize size = ct->size;
  switch (ctype_type(info)) {
  case 128: case 130:
    cp_push(decl, CTINFO(CT_TYPEDEF, id), 0);
    if ((decl->attr & CTF_QUAL)) {
      cp_push(decl, CTINFO(131, CTATTRIB(CTA_QUAL)),
       (decl->attr & CTF_QUAL));
      decl->attr &= ~CTF_QUAL;
    }
    break;
  case 131:
    if (ctype_isxattrib(info, CTA_QUAL))
      decl->attr &= ~size;
    cp_push_type(decl, ctype_cid(info));
    cp_push(decl, info & ~CTMASK_CID, size);
    break;
  case 132:
    if ((ct->info & (CTF_VECTOR|CTF_COMPLEX))) {
      info |= (decl->attr & CTF_QUAL);
      decl->attr &= ~CTF_QUAL;
    }
    cp_push_type(decl, ctype_cid(info));
    cp_push(decl, info & ~CTMASK_CID, size);
    decl->stack[decl->pos].sib = 1;

    break;
  case 129:

    decl->stack[cp_push(decl, info, size)].sib = ct->sib;
    break;
  default:

    cp_push(decl, info|(decl->attr & CTF_QUAL), size);
    decl->attr &= ~CTF_QUAL;
    break;
  }
}
