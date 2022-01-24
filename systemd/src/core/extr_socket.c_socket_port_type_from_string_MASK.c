#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SocketType ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET_FIFO ; 
 int /*<<< orphan*/  SOCKET_MQUEUE ; 
 int /*<<< orphan*/  SOCKET_SOCKET ; 
 int /*<<< orphan*/  SOCKET_SPECIAL ; 
 int /*<<< orphan*/  SOCKET_USB_FUNCTION ; 
 scalar_t__ FUNC0 (char const*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  _SOCKET_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

SocketType FUNC3(const char *s) {
        FUNC1(s);

        if (FUNC0(s, "Stream", "Datagram", "SequentialPacket", "Netlink"))
                return SOCKET_SOCKET;
        else if (FUNC2(s, "Special"))
                return SOCKET_SPECIAL;
        else if (FUNC2(s, "MessageQueue"))
                return SOCKET_MQUEUE;
        else if (FUNC2(s, "FIFO"))
                return SOCKET_FIFO;
        else if (FUNC2(s, "USBFunction"))
                return SOCKET_USB_FUNCTION;
        else
                return _SOCKET_TYPE_INVALID;
}