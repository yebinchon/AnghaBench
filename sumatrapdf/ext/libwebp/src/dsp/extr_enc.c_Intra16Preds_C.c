
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DCMode (int *,int const*,int const*,int,int,int) ;
 int HorizontalPred (int *,int const*,int) ;
 int I16DC16 ;
 int I16HE16 ;
 int I16TM16 ;
 int I16VE16 ;
 int TrueMotion (int *,int const*,int const*,int) ;
 int VerticalPred (int *,int const*,int) ;

__attribute__((used)) static void Intra16Preds_C(uint8_t* dst,
                           const uint8_t* left, const uint8_t* top) {
  DCMode(I16DC16 + dst, left, top, 16, 16, 5);
  VerticalPred(I16VE16 + dst, top, 16);
  HorizontalPred(I16HE16 + dst, left, 16);
  TrueMotion(I16TM16 + dst, left, top, 16);
}
