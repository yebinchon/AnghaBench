#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  relname; } ;
typedef  TYPE_1__* FileInfoPtr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const void *a, const void *b)
{
	FileInfoPtr *fipa, *fipb;

	fipa = (FileInfoPtr *) a;
	fipb = (FileInfoPtr *) b;
#ifdef HAVE_SETLOCALE
	return (strcoll((**fipb).relname, (**fipa).relname));
#else
	return (FUNC0((**fipb).relname, (**fipa).relname));
#endif
}