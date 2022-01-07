
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* scheme_host_port; struct TYPE_4__* name; scalar_t__ cert_chain; int entry; int ref; } ;
typedef TYPE_1__ server_t ;


 int CertFreeCertificateChain (scalar_t__) ;
 int EnterCriticalSection (int *) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int LeaveCriticalSection (int *) ;
 int connection_pool_cs ;
 int heap_free (TYPE_1__*) ;
 int list_remove (int *) ;

void server_release(server_t *server)
{
    if(InterlockedDecrement(&server->ref))
        return;




    list_remove(&server->entry);




    if(server->cert_chain)
        CertFreeCertificateChain(server->cert_chain);
    heap_free(server->name);
    heap_free(server->scheme_host_port);
    heap_free(server);
}
