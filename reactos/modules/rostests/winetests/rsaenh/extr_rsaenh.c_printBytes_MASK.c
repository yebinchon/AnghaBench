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
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void FUNC2(const char *heading, const BYTE *pb, size_t cb)
{
    size_t i;
    FUNC0("%s: ",heading);
    for(i=0;i<cb;i++)
        FUNC0("0x%02x,",pb[i]);
    FUNC1('\n');
}