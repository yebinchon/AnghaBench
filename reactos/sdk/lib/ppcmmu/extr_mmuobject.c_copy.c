
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void copy(void *target, void *src, int bytes)
{
    while(bytes--) *((char *)target++) = *((char *)src++);
}
