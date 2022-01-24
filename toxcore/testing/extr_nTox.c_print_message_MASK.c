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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  Tox ;
typedef  int /*<<< orphan*/  TOX_MESSAGE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(Tox *m, uint32_t friendnumber, TOX_MESSAGE_TYPE type, const uint8_t *string, size_t length,
                   void *userdata)
{
    /* ensure null termination */
    uint8_t null_string[length + 1];
    FUNC0(null_string, string, length);
    null_string[length] = 0;
    FUNC1(m, (char *)null_string, friendnumber, 0);
}