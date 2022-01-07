
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DC4 (int *,int const*) ;
 int HD4 (int *,int const*) ;
 int HE4 (int *,int const*) ;
 int HU4 (int *,int const*) ;
 int I4DC4 ;
 int I4HD4 ;
 int I4HE4 ;
 int I4HU4 ;
 int I4LD4 ;
 int I4RD4 ;
 int I4TM4 ;
 int I4VE4 ;
 int I4VL4 ;
 int I4VR4 ;
 int LD4 (int *,int const*) ;
 int RD4 (int *,int const*) ;
 int TM4 (int *,int const*) ;
 int VE4 (int *,int const*) ;
 int VL4 (int *,int const*) ;
 int VR4 (int *,int const*) ;

__attribute__((used)) static void Intra4Preds_C(uint8_t* dst, const uint8_t* top) {
  DC4(I4DC4 + dst, top);
  TM4(I4TM4 + dst, top);
  VE4(I4VE4 + dst, top);
  HE4(I4HE4 + dst, top);
  RD4(I4RD4 + dst, top);
  VR4(I4VR4 + dst, top);
  LD4(I4LD4 + dst, top);
  VL4(I4VL4 + dst, top);
  HD4(I4HD4 + dst, top);
  HU4(I4HU4 + dst, top);
}
