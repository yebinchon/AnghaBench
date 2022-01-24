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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int crypt_connection_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  net_crypto; } ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  TYPE_1__ Friend_Connections ;
typedef  TYPE_2__ Friend_Conn ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *object, uint32_t number, IP_Port ip_port, const uint8_t *public_key)
{
    Friend_Connections *fr_c = object;
    Friend_Conn *friend_con = FUNC2(fr_c, number);

    if (!friend_con)
        return -1;

    if (friend_con->crypt_connection_id != -1) {
        return FUNC1(fr_c, number, ip_port, public_key);
    } else {
        return FUNC0(fr_c->net_crypto, ip_port, public_key);
    }
}