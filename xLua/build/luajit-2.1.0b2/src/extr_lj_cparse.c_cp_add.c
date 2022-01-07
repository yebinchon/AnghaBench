
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t top; size_t pos; TYPE_1__* stack; int cp; } ;
struct TYPE_4__ {scalar_t__ next; int name; scalar_t__ sib; int size; int info; } ;
typedef scalar_t__ CTypeID1 ;
typedef int CTSize ;
typedef int CTInfo ;
typedef size_t CPDeclIdx ;
typedef TYPE_2__ CPDecl ;


 size_t CPARSE_MAX_DECLSTACK ;
 int LJ_ERR_XLEVELS ;
 int cp_err (int ,int ) ;
 int setgcrefnull (int ) ;

__attribute__((used)) static CPDeclIdx cp_add(CPDecl *decl, CTInfo info, CTSize size)
{
  CPDeclIdx top = decl->top;
  if (top >= CPARSE_MAX_DECLSTACK) cp_err(decl->cp, LJ_ERR_XLEVELS);
  decl->stack[top].info = info;
  decl->stack[top].size = size;
  decl->stack[top].sib = 0;
  setgcrefnull(decl->stack[top].name);
  decl->stack[top].next = decl->stack[decl->pos].next;
  decl->stack[decl->pos].next = (CTypeID1)top;
  decl->top = top+1;
  return top;
}
