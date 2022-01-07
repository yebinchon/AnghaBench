
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DATE ;
 int EXPECTDEC (int,int,int ,int) ;
 int VarDecFromDate ;

__attribute__((used)) static void test_VarDecFromDate(void)
{
  CONVVARS(DATE);

  CONVERT(VarDecFromDate,-0.6); EXPECTDEC(1,0x80,0,6);
  CONVERT(VarDecFromDate,-0.5); EXPECTDEC(1,0x80,0,5);
  CONVERT(VarDecFromDate,-0.4); EXPECTDEC(1,0x80,0,4);
  CONVERT(VarDecFromDate,0.0); EXPECTDEC(0,0,0,0);
  CONVERT(VarDecFromDate,0.4); EXPECTDEC(1,0,0,4);
  CONVERT(VarDecFromDate,0.5); EXPECTDEC(1,0,0,5);
  CONVERT(VarDecFromDate,0.6); EXPECTDEC(1,0,0,6);
}
