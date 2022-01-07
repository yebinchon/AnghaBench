
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ s; TYPE_1__* sock; } ;
typedef TYPE_2__ server_memory ;
struct TYPE_5__ {scalar_t__ s; TYPE_2__* buf; } ;


 int ExitThread (int ) ;
 int GetCurrentThreadId () ;
 scalar_t__ INVALID_SOCKET ;
 int LocalFree (TYPE_2__*) ;
 int MAX_CLIENTS ;
 TYPE_2__* TlsGetValue (int ) ;
 scalar_t__ closesocket (scalar_t__) ;
 int ok (int,char*) ;
 int tls ;

__attribute__((used)) static void server_stop (void)
{
    int i;
    server_memory *mem = TlsGetValue ( tls );

    for (i = 0; i < MAX_CLIENTS; i++ )
    {
        LocalFree ( mem->sock[i].buf );
        if ( mem->sock[i].s != INVALID_SOCKET )
            closesocket ( mem->sock[i].s );
    }
    ok ( closesocket ( mem->s ) == 0, "closesocket failed\n" );
    LocalFree ( mem );
    ExitThread ( GetCurrentThreadId () );
}
