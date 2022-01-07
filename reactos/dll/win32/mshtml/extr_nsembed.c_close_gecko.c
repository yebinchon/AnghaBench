
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteCriticalSection (int *) ;
 int TRACE (char*) ;
 scalar_t__ cat_mgr ;
 int cs_load_gecko ;
 int init_mutation (int *) ;
 int nsICategoryManager_Release (scalar_t__) ;
 int nsIComponentManager_Release (scalar_t__) ;
 int nsIFile_Release (int *) ;
 int nsIServiceManager_Release (scalar_t__) ;
 scalar_t__ pCompMgr ;
 scalar_t__ pServMgr ;
 int * plugin_directory ;
 int * profile_directory ;
 int release_nsio () ;

void close_gecko(void)
{
    TRACE("()\n");

    release_nsio();
    init_mutation(((void*)0));

    if(profile_directory) {
        nsIFile_Release(profile_directory);
        profile_directory = ((void*)0);
    }

    if(plugin_directory) {
        nsIFile_Release(plugin_directory);
        plugin_directory = ((void*)0);
    }

    if(pCompMgr)
        nsIComponentManager_Release(pCompMgr);

    if(pServMgr)
        nsIServiceManager_Release(pServMgr);

    if(cat_mgr)
        nsICategoryManager_Release(cat_mgr);




    DeleteCriticalSection(&cs_load_gecko);
}
