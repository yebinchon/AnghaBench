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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
struct _stat64 {int st_mode; } ;

/* Variables and functions */
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,struct _stat64*) ; 
 int FUNC2 (char const*,struct stat*) ; 

__attribute__((used)) static size_t FUNC3(const char* infilename)
{
    int r;
#if defined(_MSC_VER)
    struct _stat64 statbuf;
    r = _stat64(infilename, &statbuf);
    if (r || !(statbuf.st_mode & S_IFREG)) return 0;   /* No good... */
#else
    struct stat statbuf;
    r = FUNC2(infilename, &statbuf);
    if (r || !FUNC0(statbuf.st_mode)) return 0;   /* No good... */
#endif
    return (size_t)statbuf.st_size;
}