
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int TCP_Server ;
typedef int TCP_Secure_Connection ;


 int add_accepted (int *,int *) ;
 int handle_TCP_packet (int *,int,int const*,int ) ;
 int kill_TCP_connection (int *) ;
 int kill_accepted (int *,int) ;
 int sodium_memzero (int *,int) ;

__attribute__((used)) static int confirm_TCP_connection(TCP_Server *TCP_server, TCP_Secure_Connection *con, const uint8_t *data,
                                  uint16_t length)
{
    int index = add_accepted(TCP_server, con);

    if (index == -1) {
        kill_TCP_connection(con);
        return -1;
    }

    sodium_memzero(con, sizeof(TCP_Secure_Connection));

    if (handle_TCP_packet(TCP_server, index, data, length) == -1) {
        kill_accepted(TCP_server, index);
        return -1;
    }

    return index;
}
