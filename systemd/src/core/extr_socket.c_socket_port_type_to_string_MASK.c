#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int type; TYPE_3__ address; } ;
typedef  TYPE_1__ SocketPort ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETLINK ; 
#define  SOCKET_FIFO 136 
#define  SOCKET_MQUEUE 135 
#define  SOCKET_SOCKET 134 
#define  SOCKET_SPECIAL 133 
#define  SOCKET_USB_FUNCTION 132 
#define  SOCK_DGRAM 131 
#define  SOCK_RAW 130 
#define  SOCK_SEQPACKET 129 
#define  SOCK_STREAM 128 
 int /*<<< orphan*/  _fallthrough_ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

const char* FUNC2(SocketPort *p) {

        FUNC0(p);

        switch (p->type) {

        case SOCKET_SOCKET:

                switch (p->address.type) {

                case SOCK_STREAM:
                        return "Stream";

                case SOCK_DGRAM:
                        return "Datagram";

                case SOCK_SEQPACKET:
                        return "SequentialPacket";

                case SOCK_RAW:
                        if (FUNC1(&p->address) == AF_NETLINK)
                                return "Netlink";

                        _fallthrough_;
                default:
                        return NULL;
                }

        case SOCKET_SPECIAL:
                return "Special";

        case SOCKET_MQUEUE:
                return "MessageQueue";

        case SOCKET_FIFO:
                return "FIFO";

        case SOCKET_USB_FUNCTION:
                return "USBFunction";

        default:
                return NULL;
        }
}