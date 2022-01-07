
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (void*,void const*,int) ;

__attribute__((used)) static
void copy16(void* dst, const void* src)
{
       memmove(dst, src, 2);
}
