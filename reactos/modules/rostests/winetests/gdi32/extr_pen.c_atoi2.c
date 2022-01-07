
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int atoi2(const char *s)
{
    unsigned int ret = 0;
    while(*s) ret = (ret << 1) | (*s++ == '1');
    return ret;
}
