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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char
FUNC13 (mode_t bits)
{
#ifdef S_ISBLK
  if (S_ISBLK (bits))
    return 'b';
#endif
  if (FUNC1 (bits))
    return 'c';
  if (FUNC3 (bits))
    return 'd';
  if (FUNC11 (bits))
    return '-';
#ifdef S_ISFIFO
  if (S_ISFIFO (bits))
    return 'p';
#endif
#ifdef S_ISLNK
  if (S_ISLNK (bits))
    return 'l';
#endif
#ifdef S_ISSOCK
  if (S_ISSOCK (bits))
    return 's';
#endif
#ifdef S_ISMPC
  if (S_ISMPC (bits))
    return 'm';
#endif
#ifdef S_ISNWK
  if (S_ISNWK (bits))
    return 'n';
#endif
#ifdef S_ISDOOR
  if (S_ISDOOR (bits))
    return 'D';
#endif
#ifdef S_ISCTG
  if (S_ISCTG (bits))
    return 'C';
#endif

  /* The following two tests are for Cray DMF (Data Migration
     Facility), which is a HSM file system.  A migrated file has a
     `st_dm_mode' that is different from the normal `st_mode', so any
     tests for migrated files should use the former.  */

#ifdef S_ISOFD
  if (S_ISOFD (bits))
    /* off line, with data  */
    return 'M';
#endif
#ifdef S_ISOFL
  /* off line, with no data  */
  if (S_ISOFL (bits))
    return 'M';
#endif
  return '?';
}