#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  plain ;
struct TYPE_3__ {int /*<<< orphan*/  temp_secret_key; int /*<<< orphan*/  shared_key; int /*<<< orphan*/  recv_nonce; } ;
typedef  TYPE_1__ TCP_Client_Connection ;

/* Variables and functions */
 int TCP_SERVER_HANDSHAKE_SIZE ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  crypto_box_SECRETKEYBYTES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(TCP_Client_Connection *TCP_conn, const uint8_t *data)
{
    uint8_t plain[crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES];
    int len = FUNC0(TCP_conn->shared_key, data, data + crypto_box_NONCEBYTES,
                                     TCP_SERVER_HANDSHAKE_SIZE - crypto_box_NONCEBYTES, plain);

    if (len != sizeof(plain))
        return -1;

    FUNC2(TCP_conn->recv_nonce, plain + crypto_box_PUBLICKEYBYTES, crypto_box_NONCEBYTES);
    FUNC1(plain, TCP_conn->temp_secret_key, TCP_conn->shared_key);
    FUNC3(TCP_conn->temp_secret_key, crypto_box_SECRETKEYBYTES);
    return 0;
}