
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsContext ;


 int DebugMemDontCheckThis (int ) ;
 int cmsDupContext (int ,void*) ;

__attribute__((used)) static
cmsContext DupContext(cmsContext src, void* Data)
{
    cmsContext cpy = cmsDupContext(src, Data);

    DebugMemDontCheckThis(cpy);

    return cpy;
}
