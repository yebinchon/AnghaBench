
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeLibrary (int ) ;
 int TRACE (char*) ;
 int mapi_ex_provider ;
 int mapi_provider ;

void unload_mapi_providers(void)
{
    TRACE("()\n");

    FreeLibrary(mapi_provider);
    FreeLibrary(mapi_ex_provider);
}
