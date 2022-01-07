
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* report ) (TYPE_1__*,char const*) ;} ;
typedef TYPE_1__ js_State ;


 int stub1 (TYPE_1__*,char const*) ;

void js_report(js_State *J, const char *message)
{
 if (J->report)
  J->report(J, message);
}
