
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_5__ {int type; TYPE_3__ address; } ;
typedef TYPE_1__ SocketPort ;


 int AF_NETLINK ;
 int _fallthrough_ ;
 int assert (TYPE_1__*) ;
 int socket_address_family (TYPE_3__*) ;

const char* socket_port_type_to_string(SocketPort *p) {

        assert(p);

        switch (p->type) {

        case 134:

                switch (p->address.type) {

                case 128:
                        return "Stream";

                case 131:
                        return "Datagram";

                case 129:
                        return "SequentialPacket";

                case 130:
                        if (socket_address_family(&p->address) == AF_NETLINK)
                                return "Netlink";

                        _fallthrough_;
                default:
                        return ((void*)0);
                }

        case 133:
                return "Special";

        case 135:
                return "MessageQueue";

        case 136:
                return "FIFO";

        case 132:
                return "USBFunction";

        default:
                return ((void*)0);
        }
}
