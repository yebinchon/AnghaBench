
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vlc_tls_t ;
struct TYPE_5__ {int (* close ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

void vlc_tls_SessionDelete (vlc_tls_t *session)
{
    int canc = vlc_savecancel();
    session->ops->close(session);
    vlc_restorecancel(canc);
}
