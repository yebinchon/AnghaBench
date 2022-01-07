
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ JS_TNUMBER ;
 TYPE_1__* stackidx (int *,int) ;

int js_isnumber(js_State *J, int idx) { return stackidx(J, idx)->type == JS_TNUMBER; }
