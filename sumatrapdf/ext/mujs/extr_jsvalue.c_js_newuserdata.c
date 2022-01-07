
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Finalize ;


 int js_newuserdatax (int *,char const*,void*,int *,int *,int *,int ) ;

void js_newuserdata(js_State *J, const char *tag, void *data, js_Finalize finalize)
{
 js_newuserdatax(J, tag, data, ((void*)0), ((void*)0), ((void*)0), finalize);
}
