
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int attr; int fattr; } ;
struct TYPE_14__ {int tok; TYPE_1__* ct; } ;
struct TYPE_13__ {int size; } ;
typedef TYPE_2__ CPState ;
typedef TYPE_3__ CPDecl ;


 int CCONV ;
 int CTFP_CCONV ;
 int CTF_CONST ;
 int CTF_INSERT (int ,int ,int ) ;
 int CTF_VOLATILE ;
 int MSIZEP ;
 int cp_decl_asm (TYPE_2__*,TYPE_3__*) ;
 int cp_decl_gccattribute (TYPE_2__*,TYPE_3__*) ;
 int cp_decl_msvcattribute (TYPE_2__*,TYPE_3__*) ;
 int cp_next (TYPE_2__*) ;

__attribute__((used)) static void cp_decl_attributes(CPState *cp, CPDecl *decl)
{
  for (;;) {
    switch (cp->tok) {
    case 133: decl->attr |= CTF_CONST; break;
    case 128: decl->attr |= CTF_VOLATILE; break;
    case 129: break;
    case 131: break;
    case 135: cp_decl_gccattribute(cp, decl); continue;
    case 136: cp_decl_asm(cp, decl); continue;
    case 132: cp_decl_msvcattribute(cp, decl); continue;
    case 134:




      break;
    case 130:



      break;
    default: return;
    }
    cp_next(cp);
  }
}
