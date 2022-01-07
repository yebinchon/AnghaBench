
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int BOT ;
 int TOP ;

int js_gettop(js_State *J)
{
 return TOP - BOT;
}
