
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __setusermatherr (int ) ;
 int f ;
 int stUserMathErr ;

void __mingw_setusermatherr (int (__cdecl *f)(struct _exception *))
{
  stUserMathErr = f;
  __setusermatherr (f);
}
