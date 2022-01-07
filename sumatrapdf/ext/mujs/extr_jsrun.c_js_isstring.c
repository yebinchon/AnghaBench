
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int js_State ;
typedef enum js_Type { ____Placeholder_js_Type } js_Type ;
struct TYPE_2__ {int type; } ;


 int JS_TLITSTR ;
 int JS_TMEMSTR ;
 int JS_TSHRSTR ;
 TYPE_1__* stackidx (int *,int) ;

int js_isstring(js_State *J, int idx) { enum js_Type t = stackidx(J, idx)->type; return t == JS_TSHRSTR || t == JS_TLITSTR || t == JS_TMEMSTR; }
