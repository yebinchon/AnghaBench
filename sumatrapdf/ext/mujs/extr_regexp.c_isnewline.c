
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int isnewline(int c)
{
 return c == 0xA || c == 0xD || c == 0x2028 || c == 0x2029;
}
