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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  Messenger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const*) ; 
 scalar_t__ FUNC1 (int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(Messenger *m, const uint8_t *public_key, const uint8_t *data, size_t length, void *userdata)
{
    FUNC2("Friend request received from: \n");
    FUNC2("ClientID: ");
    uint32_t j;

    for (j = 0; j < 32; j++) {
        if (public_key[j] < 16)
            FUNC2("0");

        FUNC2("%hhX", public_key[j]);
    }

    FUNC2("\nOf length: %lu with data: %s \n", length, data);

    if (length != sizeof("Install Gentoo")) {
        return;
    }

    if (FUNC1(data , "Install Gentoo", sizeof("Install Gentoo")) == 0 )
        //if the request contained the message of peace the person is obviously a friend so we add him.
    {
        FUNC2("Friend request accepted.\n");
        FUNC0(m, public_key);
    }
}