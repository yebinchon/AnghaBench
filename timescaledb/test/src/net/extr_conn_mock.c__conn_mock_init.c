
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONNECTION_MOCK ;
 int mock_ops ;
 int ts_connection_register (int ,int *) ;

void
_conn_mock_init(void)
{
 ts_connection_register(CONNECTION_MOCK, &mock_ops);
}
