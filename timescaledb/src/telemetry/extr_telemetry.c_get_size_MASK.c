#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  INT64_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static char *
FUNC2(int64 size)
{
	StringInfo buf = FUNC1();

	FUNC0(buf, INT64_FORMAT, size);
	return buf->data;
}