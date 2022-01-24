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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_3__ {int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ TCP_Client_Connection ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*,unsigned int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(TCP_Client_Connection *TCP_conn)
{
    char success[] = "200";
    uint8_t data[16]; // draining works the best if the length is a power of 2

    int ret = FUNC1(TCP_conn->sock, data, sizeof(data) - 1);

    if (ret == -1) {
        return 0;
    }

    data[sizeof(data) - 1] = 0;

    if (FUNC2((char *)data, success)) {
        // drain all data
        unsigned int data_left = FUNC0(TCP_conn->sock);

        if (data_left) {
            uint8_t temp_data[data_left];
            FUNC1(TCP_conn->sock, temp_data, data_left);
        }

        return 1;
    }

    return -1;
}