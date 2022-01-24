#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8 ;
struct TYPE_3__ {int* pstcache_fd; int pstcache_Bpp; int server_depth; scalar_t__ bitmap_cache_persist_enable; scalar_t__ bitmap_cache; scalar_t__ pstcache_enumerated; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

BOOL
FUNC7(RDPCLIENT * This, uint8 cache_id)
{
	int fd;
	char filename[256];

	if (This->pstcache_enumerated)
		return True;

	This->pstcache_fd[cache_id] = 0;

	if (!(This->bitmap_cache && This->bitmap_cache_persist_enable))
		return False;

	if (!FUNC4())
	{
		FUNC0(("failed to get/make cache directory!\n"));
		return False;
	}

	This->pstcache_Bpp = (This->server_depth + 7) / 8;
	FUNC5(filename, "cache/pstcache_%d_%d", cache_id, This->pstcache_Bpp);
	FUNC0(("persistent bitmap cache file: %s\n", filename));

	fd = FUNC3(filename);
	if (fd == -1)
		return False;

	if (!FUNC2(fd, 0, 0))
	{
		FUNC6("Persistent bitmap caching is disabled. (The file is already in use)\n");
		FUNC1(fd);
		return False;
	}

	This->pstcache_fd[cache_id] = fd;
	return True;
}