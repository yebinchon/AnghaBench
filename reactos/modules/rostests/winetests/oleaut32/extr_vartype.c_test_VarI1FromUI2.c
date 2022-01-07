
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int OVERFLOWRANGE (int ,int,int) ;
 int USHORT ;
 int VarI1FromUI2 ;

__attribute__((used)) static void test_VarI1FromUI2(void)
{
  CONVVARS(USHORT);
  int i;

  CONVERTRANGE(VarI1FromUI2, 0, 127);
  OVERFLOWRANGE(VarI1FromUI2, 128, 32768);
}
