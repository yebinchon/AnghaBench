
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int bcj_x86_test_msbyte(uint8_t b)
{
 return b == 0x00 || b == 0xFF;
}
