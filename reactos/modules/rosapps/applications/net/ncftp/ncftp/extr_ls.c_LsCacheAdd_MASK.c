#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* itempath; scalar_t__ hits; int /*<<< orphan*/  expiration; int /*<<< orphan*/  fil; } ;
struct TYPE_5__ {scalar_t__ nFileInfos; } ;
typedef  TYPE_1__* FileInfoListPtr ;
typedef  int /*<<< orphan*/  FileInfoList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const* const) ; 
 char* FUNC2 (char const* const) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const* const) ; 
 TYPE_3__* gLsCache ; 
 scalar_t__ gLsCacheItemLifetime ; 
 int gOldestLsCacheItem ; 
 int kLsCacheSize ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(const char *const itempath, FileInfoListPtr files)
{
	char *cp;
	int j;

	/* Never cache empty listings in case of errors */
	if (files->nFileInfos == 0)
		return;

	j = FUNC1(itempath);
	if (j >= 0) {
		/* Directory was already in there;
		 * Replace it with the new
		 * contents.
		 */
		FUNC0(j);
	}

	cp = FUNC2(itempath);
	if (cp == NULL)
		return;

	j = gOldestLsCacheItem;
	(void) FUNC4(&gLsCache[j].fil, files, sizeof(FileInfoList));
	(void) FUNC5(&gLsCache[j].expiration);
	gLsCache[j].expiration += gLsCacheItemLifetime;
	gLsCache[j].hits = 0;
	gLsCache[j].itempath = cp;
	FUNC3(1, "ls cache add: %s\n", itempath);

	/* Increment the pointer.  This is a circular array, so if it
	 * hits the end it wraps over to the other side.
	 */
	gOldestLsCacheItem++;
	if (gOldestLsCacheItem >= kLsCacheSize)
		gOldestLsCacheItem = 0;
}