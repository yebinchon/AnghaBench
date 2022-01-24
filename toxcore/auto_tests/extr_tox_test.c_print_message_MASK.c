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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  cmp_msg ;
typedef  int /*<<< orphan*/  Tox ;
typedef  scalar_t__ TOX_MESSAGE_TYPE ;

/* Variables and functions */
 int TOX_MAX_MESSAGE_LENGTH ; 
 scalar_t__ TOX_MESSAGE_TYPE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  messages_received ; 

void FUNC3(Tox *m, uint32_t friendnumber, TOX_MESSAGE_TYPE type, const uint8_t *string, size_t length,
                   void *userdata)
{
    if (*((uint32_t *)userdata) != 974536)
        return;

    if (type != TOX_MESSAGE_TYPE_NORMAL) {
        FUNC0("Bad type");
    }

    uint8_t cmp_msg[TOX_MAX_MESSAGE_LENGTH];
    FUNC2(cmp_msg, 'G', sizeof(cmp_msg));

    if (length == TOX_MAX_MESSAGE_LENGTH && FUNC1(string, cmp_msg, sizeof(cmp_msg)) == 0)
        ++messages_received;
}