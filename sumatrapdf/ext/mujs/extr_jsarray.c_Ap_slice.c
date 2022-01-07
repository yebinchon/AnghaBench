
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_getlength (int *,int ) ;
 scalar_t__ js_hasindex (int *,int ,int) ;
 scalar_t__ js_isdefined (int *,int) ;
 int js_newarray (int *) ;
 int js_setindex (int *,int,int) ;
 int js_tointeger (int *,int) ;

__attribute__((used)) static void Ap_slice(js_State *J)
{
 int len, s, e, n;
 double sv, ev;

 js_newarray(J);

 len = js_getlength(J, 0);
 sv = js_tointeger(J, 1);
 ev = js_isdefined(J, 2) ? js_tointeger(J, 2) : len;

 if (sv < 0) sv = sv + len;
 if (ev < 0) ev = ev + len;

 s = sv < 0 ? 0 : sv > len ? len : sv;
 e = ev < 0 ? 0 : ev > len ? len : ev;

 for (n = 0; s < e; ++s, ++n)
  if (js_hasindex(J, 0, s))
   js_setindex(J, -2, n);
}
