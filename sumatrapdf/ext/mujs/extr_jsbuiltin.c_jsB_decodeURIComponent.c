
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int Decode (int *,int ,char*) ;
 int js_tostring (int *,int) ;

__attribute__((used)) static void jsB_decodeURIComponent(js_State *J)
{
 Decode(J, js_tostring(J, 1), "");
}
