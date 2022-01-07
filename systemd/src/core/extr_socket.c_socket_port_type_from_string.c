
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SocketType ;


 int SOCKET_FIFO ;
 int SOCKET_MQUEUE ;
 int SOCKET_SOCKET ;
 int SOCKET_SPECIAL ;
 int SOCKET_USB_FUNCTION ;
 scalar_t__ STR_IN_SET (char const*,char*,char*,char*,char*) ;
 int _SOCKET_TYPE_INVALID ;
 int assert (char const*) ;
 scalar_t__ streq (char const*,char*) ;

SocketType socket_port_type_from_string(const char *s) {
        assert(s);

        if (STR_IN_SET(s, "Stream", "Datagram", "SequentialPacket", "Netlink"))
                return SOCKET_SOCKET;
        else if (streq(s, "Special"))
                return SOCKET_SPECIAL;
        else if (streq(s, "MessageQueue"))
                return SOCKET_MQUEUE;
        else if (streq(s, "FIFO"))
                return SOCKET_FIFO;
        else if (streq(s, "USBFunction"))
                return SOCKET_USB_FUNCTION;
        else
                return _SOCKET_TYPE_INVALID;
}
