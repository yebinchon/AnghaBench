
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbclower (unsigned int) ;

unsigned int _mbctoupper(unsigned int c)
{
    return _ismbclower (c) ? c - 0x21 : c;
}
