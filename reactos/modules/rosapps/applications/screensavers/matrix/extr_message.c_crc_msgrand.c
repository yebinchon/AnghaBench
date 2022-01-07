
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;



WORD crc_msgrand(WORD reg)
{
 const WORD mask = 0xb400;

 if(reg & 1)
  reg = (reg >> 1) ^ mask;
 else
  reg = (reg >> 1);

 return reg;
}
