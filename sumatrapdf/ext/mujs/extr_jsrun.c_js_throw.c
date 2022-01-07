
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int js_Value ;
struct TYPE_8__ {size_t trytop; int (* panic ) (TYPE_2__*) ;TYPE_1__* trybuf; int strict; int bot; int top; int tracetop; int envtop; int E; } ;
typedef TYPE_2__ js_State ;
struct TYPE_7__ {int buf; int strict; int bot; int top; int tracetop; int envtop; int E; } ;


 int abort () ;
 int js_pushvalue (TYPE_2__*,int ) ;
 int longjmp (int ,int) ;
 int * stackidx (TYPE_2__*,int) ;
 int stub1 (TYPE_2__*) ;

void js_throw(js_State *J)
{
 if (J->trytop > 0) {
  js_Value v = *stackidx(J, -1);
  --J->trytop;
  J->E = J->trybuf[J->trytop].E;
  J->envtop = J->trybuf[J->trytop].envtop;
  J->tracetop = J->trybuf[J->trytop].tracetop;
  J->top = J->trybuf[J->trytop].top;
  J->bot = J->trybuf[J->trytop].bot;
  J->strict = J->trybuf[J->trytop].strict;
  js_pushvalue(J, v);
  longjmp(J->trybuf[J->trytop].buf, 1);
 }
 if (J->panic)
  J->panic(J);
 abort();
}
