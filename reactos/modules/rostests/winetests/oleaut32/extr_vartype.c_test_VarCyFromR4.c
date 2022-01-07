
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,float) ;
 int CONVVARS (int ) ;
 int EXPECTCY (double) ;
 int FLOAT ;
 int VarCyFromR4 ;

__attribute__((used)) static void test_VarCyFromR4(void)
{
  CONVVARS(FLOAT);

  CONVERT(VarCyFromR4, -1.0f); EXPECTCY(-1);
  CONVERT(VarCyFromR4, 0.0f); EXPECTCY(0);
  CONVERT(VarCyFromR4, 1.0f); EXPECTCY(1);
  CONVERT(VarCyFromR4, 1.5f); EXPECTCY(1.5);

  CONVERT(VarCyFromR4, -1.5f); EXPECTCY(-1.5);
  CONVERT(VarCyFromR4, -0.6f); EXPECTCY(-0.6);
  CONVERT(VarCyFromR4, -0.5f); EXPECTCY(-0.5);
  CONVERT(VarCyFromR4, -0.4f); EXPECTCY(-0.4);
  CONVERT(VarCyFromR4, 0.4f); EXPECTCY(0.4);
  CONVERT(VarCyFromR4, 0.5f); EXPECTCY(0.5);
  CONVERT(VarCyFromR4, 0.6f); EXPECTCY(0.6);
  CONVERT(VarCyFromR4, 1.5f); EXPECTCY(1.5);
  CONVERT(VarCyFromR4, 1.00009f); EXPECTCY(1.0001);
  CONVERT(VarCyFromR4, -1.00001f); EXPECTCY(-1);
  CONVERT(VarCyFromR4, -1.00005f); EXPECTCY(-1);
  CONVERT(VarCyFromR4, -0.00009f); EXPECTCY(-0.0001);
  CONVERT(VarCyFromR4, -0.00005f); EXPECTCY(0);
  CONVERT(VarCyFromR4, -0.00001f); EXPECTCY(0);
  CONVERT(VarCyFromR4, 0.00001f); EXPECTCY(0);
  CONVERT(VarCyFromR4, 0.00005f); EXPECTCY(0);
  CONVERT(VarCyFromR4, 0.00009f); EXPECTCY(0.0001);
  CONVERT(VarCyFromR4, -1.00001f); EXPECTCY(-1);
  CONVERT(VarCyFromR4, -1.00005f); EXPECTCY(-1);
  CONVERT(VarCyFromR4, -1.00009f); EXPECTCY(-1.0001);
}
