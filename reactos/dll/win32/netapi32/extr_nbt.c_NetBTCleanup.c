
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NBNameCacheDestroy (int *) ;
 int TRACE (char*) ;
 int * gNameCache ;

__attribute__((used)) static void NetBTCleanup(void)
{
    TRACE("\n");
    if (gNameCache)
    {
        NBNameCacheDestroy(gNameCache);
        gNameCache = ((void*)0);
    }
}
