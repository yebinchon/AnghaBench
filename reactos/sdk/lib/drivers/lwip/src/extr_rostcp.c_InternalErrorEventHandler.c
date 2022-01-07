
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int err_t ;
struct TYPE_4__ {int ReceiveShutdownStatus; int ReceiveShutdown; int * SocketContext; } ;
typedef TYPE_1__* PCONNECTION_ENDPOINT ;


 int TCPFinEventHandler (TYPE_1__*,int const) ;
 int TCPRecvEventHandler (TYPE_1__*) ;
 int TCPTranslateError (int const) ;
 int TRUE ;

__attribute__((used)) static
void
InternalErrorEventHandler(void *arg, const err_t err)
{
    PCONNECTION_ENDPOINT Connection = arg;


    if (!arg || Connection->SocketContext == ((void*)0)) return;


    Connection->SocketContext = ((void*)0);


    Connection->ReceiveShutdown = TRUE;
    Connection->ReceiveShutdownStatus = TCPTranslateError(err);
    TCPRecvEventHandler(Connection);


    TCPFinEventHandler(Connection, err);
}
