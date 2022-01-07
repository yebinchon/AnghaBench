
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BadOp () ;
 int OP_E (int,int) ;
 int mod ;
 scalar_t__ rm ;

__attribute__((used)) static void
OP_0f07 (int bytemode, int sizeflag)
{
  if (mod != 3 || rm != 0)
    BadOp ();
  else
    OP_E (bytemode, sizeflag);
}
