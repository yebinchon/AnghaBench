
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteCriticalSection (int *) ;
 int WSACleanup () ;
 int cs_gethostbyname ;
 scalar_t__ winsock_initialized ;

void netconn_unload( void )
{

    DeleteCriticalSection(&cs_gethostbyname);





}
