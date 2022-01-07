
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cmsContext ;


 int DebugMemDontCheckThis (int *) ;
 int DebugMemHandler ;
 int Die (char*) ;
 int * cmsCreateContext (int *,void*) ;

cmsContext WatchDogContext(void* usr)
{
    cmsContext ctx;

    ctx = cmsCreateContext(&DebugMemHandler, usr);

    if (ctx == ((void*)0))
        Die("Unable to create memory managed context");

    DebugMemDontCheckThis(ctx);
    return ctx;
}
