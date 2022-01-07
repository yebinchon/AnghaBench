
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_TCP_con {int sock; } ;


 int free (struct sec_TCP_con*) ;
 int kill_sock (int ) ;

void kill_TCP_con(struct sec_TCP_con *con)
{
    kill_sock(con->sock);
    free(con);
}
