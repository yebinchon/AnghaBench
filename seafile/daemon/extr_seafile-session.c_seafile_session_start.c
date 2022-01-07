
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafileSession ;


 int on_start_cleanup (int *) ;

void
seafile_session_start (SeafileSession *session)
{

    on_start_cleanup (session);
}
