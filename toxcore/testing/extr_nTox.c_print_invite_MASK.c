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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  Tox ;

/* Variables and functions */
 int TOX_GROUPCHAT_TYPE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int const*,int /*<<< orphan*/ ) ; 

void FUNC3(Tox *m, int friendnumber, uint8_t type, const uint8_t *data, uint16_t length, void *userdata)
{
    char msg[256];

    if (type == TOX_GROUPCHAT_TYPE_TEXT) {
        FUNC1(msg, "[i] received group chat invite from: %u, auto accepting and joining. group number: %u", friendnumber,
                FUNC2(m, friendnumber, data, length));
    } else {
        FUNC1(msg, "[i] Group chat invite received of type %u that could not be accepted by ntox.", type);
    }

    FUNC0(msg);
}