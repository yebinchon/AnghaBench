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
 short FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char const*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,short) ; 

__attribute__((used)) static	void FUNC3(const unsigned char* src, int ns, unsigned char* dst)
{
    short	v;
    FUNC1("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
	v = FUNC0(src);		src += 2;
	FUNC2(dst, v);		dst += 2;
	FUNC2(dst, v);		dst += 2;
    }
}