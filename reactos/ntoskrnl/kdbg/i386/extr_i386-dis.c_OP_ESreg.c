
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t intel_syntax ;
 int oappend (char*) ;
 int ptr_reg (int,int) ;

__attribute__((used)) static void
OP_ESreg (int code, int sizeflag)
{
  oappend (&"%es:"[intel_syntax]);
  ptr_reg (code, sizeflag);
}
