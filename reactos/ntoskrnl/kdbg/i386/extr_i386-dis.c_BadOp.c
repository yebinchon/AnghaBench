
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ codep ;
 scalar_t__ insn_codep ;
 int oappend (char*) ;

__attribute__((used)) static void
BadOp (void)
{

  codep = insn_codep + 1;
  oappend ("(bad)");
}
