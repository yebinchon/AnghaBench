
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t pos; int fattr; int attr; int mode; TYPE_1__* stack; } ;
struct TYPE_5__ {int info; } ;
typedef TYPE_1__ CType ;
typedef TYPE_2__ CPDecl ;


 int CPARSE_MODE_FIELD ;
 int CTATTRIB (int ) ;
 int CTA_ALIGN ;
 int CTFP_ALIGNED ;
 int CTFP_CCONV ;
 int CTF_VARARG ;
 int CTINFO (int ,int ) ;
 int CTMASK_CID ;
 int CTMASK_NUM ;
 int CT_ATTRIB ;
 int cp_push (TYPE_2__*,int ,int ) ;
 int ctype_align (int) ;
 scalar_t__ ctype_isfunc (int) ;

__attribute__((used)) static void cp_push_attributes(CPDecl *decl)
{
  CType *ct = &decl->stack[decl->pos];
  if (ctype_isfunc(ct->info)) {





  } else {
    if ((decl->attr & CTFP_ALIGNED) && !(decl->mode & CPARSE_MODE_FIELD))
      cp_push(decl, CTINFO(CT_ATTRIB, CTATTRIB(CTA_ALIGN)),
       ctype_align(decl->attr));
  }
}
