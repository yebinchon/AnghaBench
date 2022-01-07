
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int attr; } ;
struct TYPE_6__ {char tok; } ;
typedef int CTSize ;
typedef TYPE_1__ CPState ;
typedef TYPE_2__ CPDecl ;


 int ALIGN ;
 int CTFP_ALIGNED ;
 int CTF_INSERT (int ,int ,int) ;
 int cp_decl_sizeattr (TYPE_1__*) ;
 int lj_fls (int) ;

__attribute__((used)) static void cp_decl_align(CPState *cp, CPDecl *decl)
{
  CTSize al = 4;
  if (cp->tok == '(') {
    al = cp_decl_sizeattr(cp);
    al = al ? lj_fls(al) : 0;
  }
  CTF_INSERT(decl->attr, ALIGN, al);
  decl->attr |= CTFP_ALIGNED;
}
