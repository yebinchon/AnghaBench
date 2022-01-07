
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int Put16 (int,int *) ;

__attribute__((used)) static void DC16NoTopLeft_C(uint8_t* dst) {
  Put16(0x80, dst);
}
