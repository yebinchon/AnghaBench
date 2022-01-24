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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char const*,int,unsigned char*) ; 

__attribute__((used)) static	void FUNC4(const unsigned char* src, int ns, unsigned char* dst)
{
    FUNC3("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
	*dst++ = FUNC0(FUNC1(FUNC2(src), FUNC2(src + 3)));
	src += 6;
    }
}