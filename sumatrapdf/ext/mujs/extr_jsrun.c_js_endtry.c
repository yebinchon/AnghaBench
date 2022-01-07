
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ trytop; } ;
typedef TYPE_1__ js_State ;


 int js_error (TYPE_1__*,char*) ;

void js_endtry(js_State *J)
{
 if (J->trytop == 0)
  js_error(J, "endtry: exception stack underflow");
 --J->trytop;
}
