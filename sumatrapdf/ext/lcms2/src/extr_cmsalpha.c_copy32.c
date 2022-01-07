
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsFloat32Number ;


 int memmove (void*,void const*,int) ;

__attribute__((used)) static
void copy32(void* dst, const void* src)
{
    memmove(dst, src, sizeof(cmsFloat32Number));
}
