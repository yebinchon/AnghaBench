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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  Messenger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

void FUNC2(Messenger *m, uint32_t friendnumber, unsigned int type, const uint8_t *string, size_t length,
                   void *userdata)
{
    FUNC1("Message with length %lu received from %u: %s \n", length, friendnumber, string);
    FUNC0(m, friendnumber, type, (uint8_t *)"Test1", 6, 0);
}