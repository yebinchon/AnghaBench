
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int Put8x8uv (int,int *) ;

__attribute__((used)) static void DC8uvNoTopLeft_C(uint8_t* dst) {
  Put8x8uv(0x80, dst);
}
