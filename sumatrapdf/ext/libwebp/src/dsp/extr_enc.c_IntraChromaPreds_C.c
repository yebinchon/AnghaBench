
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int C8DC8 ;
 int C8HE8 ;
 int C8TM8 ;
 int C8VE8 ;
 int DCMode (int *,int const*,int const*,int,int,int) ;
 int HorizontalPred (int *,int const*,int) ;
 int TrueMotion (int *,int const*,int const*,int) ;
 int VerticalPred (int *,int const*,int) ;

__attribute__((used)) static void IntraChromaPreds_C(uint8_t* dst, const uint8_t* left,
                               const uint8_t* top) {

  DCMode(C8DC8 + dst, left, top, 8, 8, 4);
  VerticalPred(C8VE8 + dst, top, 8);
  HorizontalPred(C8HE8 + dst, left, 8);
  TrueMotion(C8TM8 + dst, left, top, 8);

  dst += 8;
  if (top != ((void*)0)) top += 8;
  if (left != ((void*)0)) left += 16;
  DCMode(C8DC8 + dst, left, top, 8, 8, 4);
  VerticalPred(C8VE8 + dst, top, 8);
  HorizontalPred(C8HE8 + dst, left, 8);
  TrueMotion(C8TM8 + dst, left, top, 8);
}
