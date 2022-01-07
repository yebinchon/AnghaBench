
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * connections; } ;
typedef TYPE_1__ TCP_Connections ;
typedef int TCP_Connection_to ;


 scalar_t__ connections_number_not_valid (TYPE_1__ const*,int) ;

__attribute__((used)) static TCP_Connection_to *get_connection(const TCP_Connections *tcp_c, int connections_number)
{
    if (connections_number_not_valid(tcp_c, connections_number))
        return 0;

    return &tcp_c->connections[connections_number];
}
