
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsV_newiterator (int *,int ,int) ;
 int js_pushobject (int *,int ) ;
 int js_toobject (int *,int) ;

void js_pushiterator(js_State *J, int idx, int own)
{
 js_pushobject(J, jsV_newiterator(J, js_toobject(J, idx), own));
}
