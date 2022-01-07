
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int svg_is_whitespace(int c)
{
 return (c == 0x20) || (c == 0x9) || (c == 0xD) || (c == 0xA);
}
