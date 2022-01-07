
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Tox ;
typedef scalar_t__ TOX_CONNECTION ;


 scalar_t__ TOX_CONNECTION_UDP ;
 int ck_abort_msg (char*) ;
 int ck_assert_msg (int,char*,scalar_t__) ;
 scalar_t__ connected_t1 ;

void tox_connection_status(Tox *tox, TOX_CONNECTION connection_status, void *user_data)
{
    if (*((uint32_t *)user_data) != 974536)
        return;

    if (connected_t1 && !connection_status)
        ck_abort_msg("Tox went offline");

    ck_assert_msg(connection_status == TOX_CONNECTION_UDP, "wrong status %u", connection_status);

    connected_t1 = connection_status;
}
