
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BadOp () ;
 int OP_EX (int,int) ;
 int mod ;

__attribute__((used)) static void
OP_XS (int bytemode, int sizeflag)
{
  if (mod == 3)
    OP_EX (bytemode, sizeflag);
  else
    BadOp ();
}
