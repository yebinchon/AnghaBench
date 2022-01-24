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

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char const*,int,unsigned char*) ; 

__attribute__((used)) static	void FUNC3(const unsigned char* src, int ns, unsigned char* dst)
{
    FUNC2("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
	*dst++ = FUNC0(FUNC1(src));	src += 3;
	*dst++ = FUNC0(FUNC1(src));	src += 3;
    }
}