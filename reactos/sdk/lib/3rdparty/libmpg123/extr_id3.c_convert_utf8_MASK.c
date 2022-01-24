#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t fill; scalar_t__* p; } ;
typedef  TYPE_1__ mpg123_string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,size_t) ; 

__attribute__((used)) static void FUNC3(mpg123_string *sb, const unsigned char* source, size_t len, const int noquiet)
{
	if(FUNC2(sb, len+1))
	{
		FUNC0(sb->p, source, len);
		sb->p[len] = 0;
		sb->fill = len+1;
	}
	else FUNC1(sb);
}