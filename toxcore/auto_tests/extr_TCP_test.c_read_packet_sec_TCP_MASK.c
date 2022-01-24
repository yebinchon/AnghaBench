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
typedef  int uint16_t ;
struct sec_TCP_con {int /*<<< orphan*/  recv_nonce; int /*<<< orphan*/  shared_key; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct sec_TCP_con *con, uint8_t *data, uint16_t length)
{
    int len;
    FUNC0((len = FUNC3(con->sock, data, length, 0)) == length, "wrong len %i\n", len);
    FUNC0((len = FUNC1(con->shared_key, con->recv_nonce, data + 2, length - 2, data)) != -1,
                  "Decrypt failed");
    FUNC2(con->recv_nonce);
    return len;
}