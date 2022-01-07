
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int jsY_tohex(int c)
{
 if (c >= '0' && c <= '9') return c - '0';
 if (c >= 'a' && c <= 'f') return c - 'a' + 0xA;
 if (c >= 'A' && c <= 'F') return c - 'A' + 0xA;
 return 0;
}
