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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  packet ;
typedef  int /*<<< orphan*/  Group_Chats ;

/* Variables and functions */
 int /*<<< orphan*/  GROUP_MESSAGE_KILL_PEER_ID ; 
 int GROUP_MESSAGE_KILL_PEER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(const Group_Chats *g_c, int groupnumber, uint16_t peer_num)
{
    uint8_t packet[GROUP_MESSAGE_KILL_PEER_LENGTH];

    peer_num = FUNC0(peer_num);
    FUNC1(packet, &peer_num, sizeof(uint16_t));

    if (FUNC2(g_c, groupnumber, GROUP_MESSAGE_KILL_PEER_ID, packet, sizeof(packet))) {
        return 0;
    } else {
        return -1;
    }
}