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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  Tox ;

/* Variables and functions */
 int FRADDR_TOSTR_BUFSIZE ; 
 int TOX_ADDRESS_SIZE ; 
 scalar_t__ TOX_MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int id_str_len ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* ptrn_friend ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ *) ; 

void FUNC6(Tox *m)
{
    FUNC2("[i] Friend List:");

    char name[TOX_MAX_NAME_LENGTH + 1];
    uint8_t fraddr_bin[TOX_ADDRESS_SIZE];
    char fraddr_str[FRADDR_TOSTR_BUFSIZE];

    /* account for the longest name and the longest "base" string and number (int) and id_str */
    char fstring[TOX_MAX_NAME_LENGTH + FUNC4(ptrn_friend) + 21 + id_str_len];

    uint32_t i = 0;

    while (FUNC1(m, i, name) != -1) {
        if (FUNC5(m, i, fraddr_bin, NULL))
            FUNC0(fraddr_bin, fraddr_str);
        else
            FUNC3(fraddr_str, "???");

        if (FUNC4(name) <= 0) {
            FUNC3(fstring, ptrn_friend, i, "No name?", fraddr_str);
        } else {
            FUNC3(fstring, ptrn_friend, i, (uint8_t *)name, fraddr_str);
        }

        i++;
        FUNC2(fstring);
    }

    if (i == 0)
        FUNC2("+ no friends! D:");
}