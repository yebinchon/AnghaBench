
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void PICE_memset(void* p,unsigned char c,int sz)
{
    unsigned char *p2 = (unsigned char *)p;
    while(sz--)
        *p2++ = c;
}
