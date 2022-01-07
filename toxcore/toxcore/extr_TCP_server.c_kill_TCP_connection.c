
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sock; int priority_queue_start; } ;
typedef TYPE_1__ TCP_Secure_Connection ;


 int kill_sock (int ) ;
 int sodium_memzero (TYPE_1__*,int) ;
 int wipe_priority_list (int ) ;

__attribute__((used)) static void kill_TCP_connection(TCP_Secure_Connection *con)
{
    wipe_priority_list(con->priority_queue_start);
    kill_sock(con->sock);
    sodium_memzero(con, sizeof(TCP_Secure_Connection));
}
