
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_18__ {TYPE_1__* f; } ;
struct TYPE_17__ {int linenumber; } ;
struct TYPE_16__ {int linedefined; int lastlinedefined; } ;
typedef TYPE_2__ LexState ;
typedef TYPE_3__ FuncState ;


 int TK_END ;
 int TK_FUNCTION ;
 int adjustlocalvars (TYPE_2__*,int) ;
 int check_match (TYPE_2__*,int ,int ,int) ;
 int checknext (TYPE_2__*,char) ;
 int chunk (TYPE_2__*) ;
 int close_func (TYPE_2__*) ;
 int new_localvarliteral (TYPE_2__*,char*,int ) ;
 int open_func (TYPE_2__*,TYPE_3__*) ;
 int parlist (TYPE_2__*) ;
 int pushclosure (TYPE_2__*,TYPE_3__*,int *) ;

__attribute__((used)) static void body(LexState*ls,expdesc*e,int needself,int line){
FuncState new_fs;
open_func(ls,&new_fs);
new_fs.f->linedefined=line;
checknext(ls,'(');
if(needself){
new_localvarliteral(ls,"self",0);
adjustlocalvars(ls,1);
}
parlist(ls);
checknext(ls,')');
chunk(ls);
new_fs.f->lastlinedefined=ls->linenumber;
check_match(ls,TK_END,TK_FUNCTION,line);
close_func(ls);
pushclosure(ls,&new_fs,e);
}
