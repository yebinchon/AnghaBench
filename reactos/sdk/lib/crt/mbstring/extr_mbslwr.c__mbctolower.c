
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbcupper (unsigned int) ;

unsigned int _mbctolower(unsigned int c)
{
    return _ismbcupper (c) ? c + 0x21 : c;
}
