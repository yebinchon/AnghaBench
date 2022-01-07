
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t trytop; TYPE_1__* trybuf; int strict; int bot; int top; int tracetop; int envtop; int E; } ;
typedef TYPE_2__ js_State ;
struct TYPE_5__ {void* buf; int * pc; int strict; int bot; int top; int tracetop; int envtop; int E; } ;


 size_t JS_TRYLIMIT ;
 int js_error (TYPE_2__*,char*) ;

void *js_savetry(js_State *J)
{
 if (J->trytop == JS_TRYLIMIT)
  js_error(J, "try: exception stack overflow");
 J->trybuf[J->trytop].E = J->E;
 J->trybuf[J->trytop].envtop = J->envtop;
 J->trybuf[J->trytop].tracetop = J->tracetop;
 J->trybuf[J->trytop].top = J->top;
 J->trybuf[J->trytop].bot = J->bot;
 J->trybuf[J->trytop].strict = J->strict;
 J->trybuf[J->trytop].pc = ((void*)0);
 return J->trybuf[J->trytop++].buf;
}
