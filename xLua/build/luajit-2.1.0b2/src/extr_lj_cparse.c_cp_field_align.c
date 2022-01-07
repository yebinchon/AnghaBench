
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int info; int cts; } ;
typedef TYPE_1__ CType ;
typedef int CTSize ;
typedef int CTInfo ;
typedef TYPE_1__ CPState ;


 int CTFP_ALIGNED ;
 int CTF_VECTOR ;
 int UNUSED (TYPE_1__*) ;
 int ctype_align (int) ;
 scalar_t__ ctype_isarray (int) ;
 scalar_t__ ctype_isenum (int) ;
 scalar_t__ ctype_isnum (int) ;
 TYPE_1__* ctype_rawchild (int ,TYPE_1__*) ;

__attribute__((used)) static CTSize cp_field_align(CPState *cp, CType *ct, CTInfo info)
{
  CTSize align = ctype_align(info);
  UNUSED(cp); UNUSED(ct);
  return align;
}
