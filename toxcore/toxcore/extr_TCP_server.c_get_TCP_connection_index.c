
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int accepted_key_list; } ;
typedef TYPE_1__ TCP_Server ;


 int bs_list_find (int *,int const*) ;

__attribute__((used)) static int get_TCP_connection_index(const TCP_Server *TCP_server, const uint8_t *public_key)
{
    return bs_list_find(&TCP_server->accepted_key_list, public_key);
}
