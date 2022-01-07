
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int CONNECTION_PLAIN ;
 int ERROR ;
 int MAKEWORD (int,int) ;
 int WSAStartup (int ,int *) ;
 int elog (int ,char*,int) ;
 int plain_ops ;
 int ts_connection_register (int ,int *) ;

void
_conn_plain_init(void)
{
 ts_connection_register(CONNECTION_PLAIN, &plain_ops);
}
