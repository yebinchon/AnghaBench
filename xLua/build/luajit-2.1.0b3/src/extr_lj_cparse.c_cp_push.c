
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pos; } ;
typedef int CTSize ;
typedef int CTInfo ;
typedef int CPDeclIdx ;
typedef TYPE_1__ CPDecl ;


 int cp_add (TYPE_1__*,int ,int ) ;

__attribute__((used)) static CPDeclIdx cp_push(CPDecl *decl, CTInfo info, CTSize size)
{
  return (decl->pos = cp_add(decl, info, size));
}
