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
struct TYPE_3__ {int /*<<< orphan*/  szPathName; } ;
typedef  TYPE_1__ OFSTRUCT ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OF_CREATE ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,...) ; 

__attribute__((used)) static void FUNC5(char *fname)
{
  INT file;
  OFSTRUCT ofs;
  DWORD retval;

  file = FUNC3(fname, &ofs, OF_CREATE);
  FUNC4(file >= 0, "LZOpenFileA failed to create '%s'\n", fname);
  FUNC2(file);
  retval = FUNC0(fname);
  FUNC4(retval != INVALID_FILE_ATTRIBUTES, "GetFileAttributesA('%s'): error %d\n", ofs.szPathName, FUNC1());
}