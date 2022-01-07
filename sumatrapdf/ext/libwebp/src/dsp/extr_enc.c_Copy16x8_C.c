
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int Copy (int const*,int *,int,int) ;

__attribute__((used)) static void Copy16x8_C(const uint8_t* src, uint8_t* dst) {
  Copy(src, dst, 16, 8);
}
