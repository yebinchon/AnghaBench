
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsContext ;



__attribute__((used)) static
cmsContext DbgThread(void)
{
    static cmsUInt32Number n = 1;

    return (cmsContext) (void*)(n++ % 0xff0);
}
