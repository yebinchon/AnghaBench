
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_header {int wait; int cancel; scalar_t__ sink; } ;


 int CloseHandle (int ) ;
 int IWbemObjectSink_Release (scalar_t__) ;
 int heap_free (struct async_header*) ;

__attribute__((used)) static void free_async( struct async_header *async )
{
    if (async->sink) IWbemObjectSink_Release( async->sink );
    CloseHandle( async->cancel );
    CloseHandle( async->wait );
    heap_free( async );
}
