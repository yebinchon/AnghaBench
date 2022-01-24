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
 int _O_RDONLY ; 
 int _O_WRONLY ; 
 int _SH_DENYNO ; 
 int _SH_DENYRD ; 
 int _SH_DENYWR ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  wfilename ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static __inline int FUNC3(const char *filename, int oflag , int pmode)
{
	int ret = -1;
	int shflag = _SH_DENYNO;
	FUNC1(filename);
	// Try to match the share flag to the oflag
	if ((oflag & 0x03) == _O_RDONLY)
		shflag = _SH_DENYWR;
	else if ((oflag & 0x03) == _O_WRONLY)
		shflag = _SH_DENYRD;
	FUNC0(&ret, wfilename, oflag, shflag, pmode);
	FUNC2(filename);
	return ret;
}