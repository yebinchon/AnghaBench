
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allocvsid (int) ;

void mmuallocvsid(int vsid, int mask)
{
    int i;
    for(i = 0; i < 16; i++)
    {
 if(mask & (1 << i))
     allocvsid((vsid << 4) + i);
    }
}
