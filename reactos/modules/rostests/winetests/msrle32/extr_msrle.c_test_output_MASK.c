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
 int /*<<< orphan*/  FUNC0 (int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(const BYTE *output, int out_size, const BYTE *expect, int size)
{
    char buf[512], *ptr;
    int i;

    i = out_size == size && !FUNC0(output, expect, size);
    FUNC1(i, "Unexpected output\n");
    if(i)
        return;

    for(i=0, ptr=buf; i<out_size; i++)
        ptr += FUNC2(ptr, "%x ", output[i]);
    FUNC3("Got: %s\n", buf);
    for(i=0, ptr=buf; i<size; i++)
        ptr += FUNC2(ptr, "%x ", expect[i]);
    FUNC3("Exp: %s\n", buf);
}