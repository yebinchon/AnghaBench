
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int _crc_reg ;

int crc_rand()
{
 const WORD mask = 0xb400;

 if(_crc_reg & 1)
  _crc_reg = (_crc_reg >> 1) ^ mask;
 else
  _crc_reg = (_crc_reg >> 1);

 return _crc_reg;
}
