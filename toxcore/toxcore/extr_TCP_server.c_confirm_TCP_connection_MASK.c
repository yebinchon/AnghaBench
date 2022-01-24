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
typedef  int /*<<< orphan*/  TCP_Server ;
typedef  int /*<<< orphan*/  TCP_Secure_Connection ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(TCP_Server *TCP_server, TCP_Secure_Connection *con, const uint8_t *data,
                                  uint16_t length)
{
    int index = FUNC0(TCP_server, con);

    if (index == -1) {
        FUNC2(con);
        return -1;
    }

    FUNC4(con, sizeof(TCP_Secure_Connection));

    if (FUNC1(TCP_server, index, data, length) == -1) {
        FUNC3(TCP_server, index);
        return -1;
    }

    return index;
}