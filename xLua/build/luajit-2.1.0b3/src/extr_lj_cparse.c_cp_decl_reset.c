
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pos; int specpos; int top; int * redir; int * name; int specfattr; int fattr; int specattr; int attr; TYPE_1__* stack; } ;
struct TYPE_4__ {scalar_t__ next; } ;
typedef TYPE_2__ CPDecl ;



__attribute__((used)) static void cp_decl_reset(CPDecl *decl)
{
  decl->pos = decl->specpos;
  decl->top = decl->specpos+1;
  decl->stack[decl->specpos].next = 0;
  decl->attr = decl->specattr;
  decl->fattr = decl->specfattr;
  decl->name = ((void*)0);
  decl->redir = ((void*)0);
}
