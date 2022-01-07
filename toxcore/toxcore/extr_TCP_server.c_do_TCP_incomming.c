
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int TCP_Server ;


 scalar_t__ MAX_INCOMMING_CONNECTIONS ;
 int do_incoming (int *,scalar_t__) ;

__attribute__((used)) static void do_TCP_incomming(TCP_Server *TCP_server)
{
    uint32_t i;

    for (i = 0; i < MAX_INCOMMING_CONNECTIONS; ++i) {
        do_incoming(TCP_server, i);
    }
}
