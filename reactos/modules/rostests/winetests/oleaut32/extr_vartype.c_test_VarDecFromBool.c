
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTDEC (int ,int,int ,int) ;
 int SHORT ;
 int VarDecFromBool ;

__attribute__((used)) static void test_VarDecFromBool(void)
{
  CONVVARS(SHORT);
  int i;


  for (i = -32768; i < 0; i++)
  {
    CONVERT(VarDecFromBool,i);
    if (i)
      EXPECTDEC(0,0x80,0,1);
    else
      EXPECTDEC(0,0,0,0);
  }
}
