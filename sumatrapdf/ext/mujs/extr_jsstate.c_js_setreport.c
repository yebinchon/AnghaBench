
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int report; } ;
typedef TYPE_1__ js_State ;
typedef int js_Report ;



void js_setreport(js_State *J, js_Report report)
{
 J->report = report;
}
