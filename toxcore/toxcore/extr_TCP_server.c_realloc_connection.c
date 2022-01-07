
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size_accepted_connections; int * accepted_connection_array; } ;
typedef TYPE_1__ TCP_Server ;
typedef int TCP_Secure_Connection ;


 int free (int *) ;
 int memset (int *,int ,int) ;
 int * realloc (int *,int) ;

__attribute__((used)) static int realloc_connection(TCP_Server *TCP_server, uint32_t num)
{
    if (num == 0) {
        free(TCP_server->accepted_connection_array);
        TCP_server->accepted_connection_array = ((void*)0);
        TCP_server->size_accepted_connections = 0;
        return 0;
    }

    if (num == TCP_server->size_accepted_connections) {
        return 0;
    }

    TCP_Secure_Connection *new_connections = realloc(TCP_server->accepted_connection_array,
            num * sizeof(TCP_Secure_Connection));

    if (new_connections == ((void*)0))
        return -1;

    if (num > TCP_server->size_accepted_connections) {
        uint32_t old_size = TCP_server->size_accepted_connections;
        uint32_t size_new_entries = (num - old_size) * sizeof(TCP_Secure_Connection);
        memset(new_connections + old_size, 0, size_new_entries);
    }

    TCP_server->accepted_connection_array = new_connections;
    TCP_server->size_accepted_connections = num;
    return 0;
}
