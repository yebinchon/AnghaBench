
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYTE ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int OVERFLOWRANGE (int ,int,int) ;
 int VarI1FromUI1 ;

__attribute__((used)) static void test_VarI1FromUI1(void)
{
  CONVVARS(BYTE);
  int i;

  CONVERTRANGE(VarI1FromUI1, 0, 127);
  OVERFLOWRANGE(VarI1FromUI1, 128, 255);
}
