
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ nCcalls; int top; } ;
struct TYPE_22__ {TYPE_3__* L; } ;
struct TYPE_21__ {void* maxstacksize; void* is_vararg; void* numparams; void* nups; void* lastlinedefined; void* linedefined; int * source; } ;
typedef int TString ;
typedef TYPE_1__ Proto ;
typedef TYPE_2__ LoadState ;


 int IF (int,char*) ;
 scalar_t__ LUAI_MAXCCALLS ;
 void* LoadByte (TYPE_2__*) ;
 int LoadCode (TYPE_2__*,TYPE_1__*) ;
 int LoadConstants (TYPE_2__*,TYPE_1__*) ;
 int LoadDebug (TYPE_2__*,TYPE_1__*) ;
 void* LoadInt (TYPE_2__*) ;
 int * LoadString (TYPE_2__*) ;
 int error (TYPE_2__*,char*) ;
 int incr_top (TYPE_3__*) ;
 TYPE_1__* luaF_newproto (TYPE_3__*) ;
 int luaG_checkcode (TYPE_1__*) ;
 int setptvalue2s (TYPE_3__*,int ,TYPE_1__*) ;

__attribute__((used)) static Proto* LoadFunction(LoadState* S, TString* p)
{
 Proto* f;
 if (++S->L->nCcalls > LUAI_MAXCCALLS) error(S,"code too deep");
 f=luaF_newproto(S->L);
 setptvalue2s(S->L,S->L->top,f); incr_top(S->L);
 f->source=LoadString(S); if (f->source==((void*)0)) f->source=p;
 f->linedefined=LoadInt(S);
 f->lastlinedefined=LoadInt(S);
 f->nups=LoadByte(S);
 f->numparams=LoadByte(S);
 f->is_vararg=LoadByte(S);
 f->maxstacksize=LoadByte(S);
 LoadCode(S,f);
 LoadConstants(S,f);
 LoadDebug(S,f);
 IF (!luaG_checkcode(f), "bad code");
 S->L->top--;
 S->L->nCcalls--;
 return f;
}
