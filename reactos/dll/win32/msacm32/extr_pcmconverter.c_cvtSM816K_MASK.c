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
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 short FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char const*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,short) ; 

__attribute__((used)) static	void FUNC4(const unsigned char* src, int ns, unsigned char* dst)
{
    short	v;
    FUNC2("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
	v = FUNC1(FUNC0(src[0]), FUNC0(src[1]));
	src += 2;
	FUNC3(dst, v);		dst += 2;
    }
}