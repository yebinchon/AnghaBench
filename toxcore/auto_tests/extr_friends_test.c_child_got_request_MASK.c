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
typedef  int /*<<< orphan*/  Messenger ;

/* Variables and functions */
 int /*<<< orphan*/  FIRST_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  request_flags ; 
 int /*<<< orphan*/  stdout ; 

void FUNC3(Messenger *m, uint8_t *public_key, uint8_t *data, uint16_t length, void *userdata)
{
    FUNC1("OK\nsending status to parent", stdout);
    FUNC0(stdout);
    FUNC2(m, public_key);
    request_flags |= FIRST_FLAG;
}