
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_netlink_message ;
struct TYPE_3__ {scalar_t__ port; scalar_t__ encrypt; scalar_t__ encoding_an; } ;
typedef int NetDev ;
typedef TYPE_1__ MACsec ;
typedef int Link ;


 int IFLA_MACSEC_ENCODING_SA ;
 int IFLA_MACSEC_ENCRYPT ;
 int IFLA_MACSEC_PORT ;
 TYPE_1__* MACSEC (int *) ;
 int assert (int *) ;
 int log_netdev_error_errno (int *,int,char*) ;
 int sd_netlink_message_append_u16 (int *,int ,scalar_t__) ;
 int sd_netlink_message_append_u8 (int *,int ,scalar_t__) ;

__attribute__((used)) static int netdev_macsec_fill_message_create(NetDev *netdev, Link *link, sd_netlink_message *m) {
        MACsec *v;
        int r;

        assert(netdev);
        assert(m);

        v = MACSEC(netdev);

        if (v->port > 0) {
                r = sd_netlink_message_append_u16(m, IFLA_MACSEC_PORT, v->port);
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_MACSEC_PORT attribute: %m");
        }

        if (v->encrypt >= 0) {
                r = sd_netlink_message_append_u8(m, IFLA_MACSEC_ENCRYPT, v->encrypt);
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_MACSEC_ENCRYPT attribute: %m");
        }

        r = sd_netlink_message_append_u8(m, IFLA_MACSEC_ENCODING_SA, v->encoding_an);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_MACSEC_ENCODING_SA attribute: %m");

        return r;
}
