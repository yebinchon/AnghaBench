
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ packet_number; scalar_t__ key_len; } ;
struct TYPE_7__ {TYPE_2__* section; TYPE_4__ sa; struct TYPE_7__* macsec; } ;
typedef TYPE_1__ TransmitAssociation ;
struct TYPE_8__ {int line; int filename; } ;
typedef int NetDev ;


 int EINVAL ;
 int * NETDEV (TYPE_1__*) ;
 int SYNTHETIC_ERRNO (int) ;
 int assert (TYPE_1__*) ;
 int log_netdev_error_errno (int *,int ,char*,int ,int ) ;
 int macsec_read_key_file (int *,TYPE_4__*) ;
 scalar_t__ section_is_invalid (TYPE_2__*) ;

__attribute__((used)) static int macsec_transmit_association_verify(TransmitAssociation *t) {
        NetDev *netdev;
        int r;

        assert(t);
        assert(t->macsec);

        netdev = NETDEV(t->macsec);

        if (section_is_invalid(t->section))
                return -EINVAL;

        if (t->sa.packet_number == 0)
                return log_netdev_error_errno(netdev, SYNTHETIC_ERRNO(EINVAL),
                                              "%s: MACsec transmit secure association without PacketNumber= configured. "
                                              "Ignoring [MACsecTransmitAssociation] section from line %u",
                                              t->section->filename, t->section->line);

        r = macsec_read_key_file(netdev, &t->sa);
        if (r < 0)
                return r;

        if (t->sa.key_len <= 0)
                return log_netdev_error_errno(netdev, SYNTHETIC_ERRNO(EINVAL),
                                              "%s: MACsec transmit secure association without key configured. "
                                              "Ignoring [MACsecTransmitAssociation] section from line %u",
                                              t->section->filename, t->section->line);

        return 0;
}
