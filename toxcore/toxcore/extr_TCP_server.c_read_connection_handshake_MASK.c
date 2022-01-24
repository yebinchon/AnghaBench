#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ TCP_Secure_Connection ;

/* Variables and functions */
 int TCP_CLIENT_HANDSHAKE_SIZE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(TCP_Secure_Connection *con, const uint8_t *self_secret_key)
{
    uint8_t data[TCP_CLIENT_HANDSHAKE_SIZE];
    int len = 0;

    if ((len = FUNC1(con->sock, data, TCP_CLIENT_HANDSHAKE_SIZE)) != -1) {
        return FUNC0(con, data, len, self_secret_key);
    }

    return 0;
}