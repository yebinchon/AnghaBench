
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int line; int filename; } ;
struct TYPE_6__ {scalar_t__ session_id; scalar_t__ peer_session_id; TYPE_2__* section; int name; struct TYPE_6__* tunnel; } ;
typedef int NetDev ;
typedef TYPE_1__ L2tpSession ;


 int EINVAL ;
 int * NETDEV (TYPE_1__*) ;
 int SYNTHETIC_ERRNO (int) ;
 int assert (TYPE_1__*) ;
 int log_netdev_error_errno (int *,int ,char*,int ,int ) ;
 scalar_t__ section_is_invalid (TYPE_2__*) ;

__attribute__((used)) static int l2tp_session_verify(L2tpSession *session) {
        NetDev *netdev;

        assert(session);
        assert(session->tunnel);

        netdev = NETDEV(session->tunnel);

        if (section_is_invalid(session->section))
                return -EINVAL;

        if (!session->name)
                return log_netdev_error_errno(netdev, SYNTHETIC_ERRNO(EINVAL),
                                              "%s: L2TP session without name configured. "
                                              "Ignoring [L2TPSession] section from line %u",
                                              session->section->filename, session->section->line);

        if (session->session_id == 0 || session->peer_session_id == 0)
                return log_netdev_error_errno(netdev, SYNTHETIC_ERRNO(EINVAL),
                                              "%s: L2TP session without session IDs configured. "
                                              "Ignoring [L2TPSession] section from line %u",
                                              session->section->filename, session->section->line);

        return 0;
}
