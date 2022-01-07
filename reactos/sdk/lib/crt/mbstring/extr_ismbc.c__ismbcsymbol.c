
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int _ismbcsymbol( unsigned int c )
{
 return (c >= 0x8141 && c <= 0x817e) || (c >= 0x8180 && c <= 0x81ac);
}
