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
typedef  char uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  Tox ;

/* Variables and functions */
 int /*<<< orphan*/  TOX_MAX_NAME_LENGTH ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,char const*,...) ; 

void FUNC3(Tox *m, uint32_t friendnumber, const uint8_t *string, size_t length, void *userdata)
{
    char name[TOX_MAX_NAME_LENGTH + 1];

    if (FUNC0(m, friendnumber, name) != -1) {
        char msg[100 + length];

        if (name[0] != 0)
            FUNC2(msg, "[i] [%d] %s is now known as %s.", friendnumber, name, string);
        else
            FUNC2(msg, "[i] [%d] Friend's name is %s.", friendnumber, string);

        FUNC1(msg);
    }
}