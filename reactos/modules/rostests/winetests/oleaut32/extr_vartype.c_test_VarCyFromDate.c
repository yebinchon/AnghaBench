
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,float) ;
 int CONVVARS (int ) ;
 int DATE ;
 int EXPECTCY (double) ;
 int EXPECTCY64 (int,int) ;
 int EXPECT_OVERFLOW ;
 int VarCyFromDate ;
 int VarCyFromR8 ;

__attribute__((used)) static void test_VarCyFromDate(void)
{
  CONVVARS(DATE);





  CONVERT(VarCyFromDate, -1.0); EXPECTCY(-1);
  CONVERT(VarCyFromDate, -0.0); EXPECTCY(0);
  CONVERT(VarCyFromDate, 1.0); EXPECTCY(1);
  CONVERT(VarCyFromDate, -4611686018427388416.1); EXPECT_OVERFLOW;
  CONVERT(VarCyFromDate, 4611686018427387648.0); EXPECT_OVERFLOW;


  CONVERT(VarCyFromDate, -1.5f); EXPECTCY(-1.5);
  CONVERT(VarCyFromDate, -0.6f); EXPECTCY(-0.6);
  CONVERT(VarCyFromDate, -0.5f); EXPECTCY(-0.5);
  CONVERT(VarCyFromDate, -0.4f); EXPECTCY(-0.4);
  CONVERT(VarCyFromDate, 0.4f); EXPECTCY(0.4);
  CONVERT(VarCyFromDate, 0.5f); EXPECTCY(0.5);
  CONVERT(VarCyFromDate, 0.6f); EXPECTCY(0.6);
  CONVERT(VarCyFromDate, 1.5f); EXPECTCY(1.5);
  CONVERT(VarCyFromDate, 1.00009f); EXPECTCY(1.0001);
  CONVERT(VarCyFromDate, -1.00001f); EXPECTCY(-1);
  CONVERT(VarCyFromDate, -1.00005f); EXPECTCY(-1);
  CONVERT(VarCyFromDate, -0.00009f); EXPECTCY(-0.0001);
  CONVERT(VarCyFromDate, -0.00005f); EXPECTCY(0);
  CONVERT(VarCyFromDate, -0.00001f); EXPECTCY(0);
  CONVERT(VarCyFromDate, 0.00001f); EXPECTCY(0);
  CONVERT(VarCyFromDate, 0.00005f); EXPECTCY(0);
  CONVERT(VarCyFromDate, 0.00009f); EXPECTCY(0.0001);
  CONVERT(VarCyFromDate, -1.00001f); EXPECTCY(-1);
  CONVERT(VarCyFromDate, -1.00005f); EXPECTCY(-1);
  CONVERT(VarCyFromDate, -1.00009f); EXPECTCY(-1.0001);
}
