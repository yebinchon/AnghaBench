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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  TCP_Secure_Connection ;

/* Variables and functions */
 scalar_t__ NUM_RESERVED_PORTS ; 
 scalar_t__ TCP_PACKET_DISCONNECT_NOTIFICATION ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__*,int,int) ; 

__attribute__((used)) static int FUNC1(TCP_Secure_Connection *con, uint8_t id)
{
    uint8_t data[2] = {TCP_PACKET_DISCONNECT_NOTIFICATION, id + NUM_RESERVED_PORTS};
    return FUNC0(con, data, sizeof(data), 1);
}