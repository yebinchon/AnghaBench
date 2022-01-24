#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  connection_number_tcp; void* direct_lastrecv_timev6; void* direct_lastrecv_timev4; } ;
struct TYPE_12__ {int /*<<< orphan*/ * uint32; } ;
struct TYPE_13__ {scalar_t__ family; TYPE_1__ ip6; } ;
struct TYPE_15__ {TYPE_2__ ip; } ;
struct TYPE_14__ {int /*<<< orphan*/  tcp_c; } ;
typedef  TYPE_3__ Net_Crypto ;
typedef  TYPE_4__ IP_Port ;
typedef  TYPE_5__ Crypto_Connection ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ TCP_FAMILY ; 
 scalar_t__ FUNC0 (TYPE_3__*,int,TYPE_4__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_3__*,int) ; 
 void* FUNC3 () ; 

__attribute__((used)) static int FUNC4(Net_Crypto *c, int crypt_connection_id, IP_Port source)
{
    Crypto_Connection *conn = FUNC2(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    if (source.ip.family == AF_INET || source.ip.family == AF_INET6) {
        if (FUNC0(c, crypt_connection_id, source) != 0)
            return -1;

        if (source.ip.family == AF_INET) {
            conn->direct_lastrecv_timev4 = FUNC3();
        } else {
            conn->direct_lastrecv_timev6 = FUNC3();
        }

        return 0;
    } else if (source.ip.family == TCP_FAMILY) {
        if (FUNC1(c->tcp_c, conn->connection_number_tcp, source.ip.ip6.uint32[0]) == 0)
            return 1;
    }

    return -1;
}