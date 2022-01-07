
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_header {void (* proc ) (struct async_header*) ;int * sink; void* wait; void* cancel; } ;
typedef int IWbemObjectSink ;
typedef int BOOL ;


 int CloseHandle (void*) ;
 void* CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 int IWbemObjectSink_AddRef (int *) ;
 int TRUE ;

__attribute__((used)) static BOOL init_async( struct async_header *async, IWbemObjectSink *sink,
                        void (*proc)(struct async_header *) )
{
    if (!(async->wait = CreateEventW( ((void*)0), FALSE, FALSE, ((void*)0) ))) return FALSE;
    if (!(async->cancel = CreateEventW( ((void*)0), FALSE, FALSE, ((void*)0) )))
    {
        CloseHandle( async->wait );
        return FALSE;
    }
    async->proc = proc;
    async->sink = sink;
    IWbemObjectSink_AddRef( sink );
    return TRUE;
}
