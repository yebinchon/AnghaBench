#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  text; } ;
struct TYPE_4__ {TYPE_1__ input_file; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int FUNC0 (char*) ; 
 TYPE_2__ fc ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC6(int dir)
{
	char buf[PATH_MAX], *p, *n;
	char base[PATH_MAX], out[PATH_MAX];
	int x;
	FUNC2(buf, fc.input_file.text, sizeof buf);
	p = FUNC4(buf, '.');
	if (p)
	{
		n = p;
		while (n > buf && n[-1] >= '0' && n[-1] <= '9')
			--n;
		if (n != p)
			x = FUNC0(n) + dir;
		else
			x = dir;
		FUNC3(base, buf, n-buf);
		base[n-buf] = 0;
		FUNC1(out, sizeof out, "%s%d%s", base, x, p);
		FUNC5(&fc.input_file, out);
	}
}