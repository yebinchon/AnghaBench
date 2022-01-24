#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ping ;
typedef  int int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  ping_lastsent; int /*<<< orphan*/  crypt_connection_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  net_crypto; } ;
typedef  TYPE_1__ Friend_Connections ;
typedef  TYPE_2__ Friend_Conn ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_ID_ALIVE ; 
 TYPE_2__* FUNC0 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const Friend_Connections *fr_c, int friendcon_id)
{
    Friend_Conn *friend_con = FUNC0(fr_c, friendcon_id);

    if (!friend_con)
        return -1;

    uint8_t ping = PACKET_ID_ALIVE;
    int64_t ret = FUNC2(fr_c->net_crypto, friend_con->crypt_connection_id, &ping, sizeof(ping), 0);

    if (ret != -1) {
        friend_con->ping_lastsent = FUNC1();
        return 0;
    }

    return -1;
}