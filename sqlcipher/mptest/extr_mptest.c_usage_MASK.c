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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(const char *argv0){
  int i;
  const char *zTail = argv0;
  for(i=0; argv0[i]; i++){
    if( FUNC2(argv0[i]) ) zTail = argv0+i+1;
  }
  FUNC1(stderr,"Usage: %s DATABASE ?OPTIONS? ?SCRIPT?\n", zTail);
  FUNC1(stderr,
    "Options:\n"
    "   --errlog FILENAME           Write errors to FILENAME\n"
    "   --journalmode MODE          Use MODE as the journal_mode\n"
    "   --log FILENAME              Log messages to FILENAME\n"
    "   --quiet                     Suppress unnecessary output\n"
    "   --vfs NAME                  Use NAME as the VFS\n"
    "   --repeat N                  Repeat the test N times\n"
    "   --sqltrace                  Enable SQL tracing\n"
    "   --sync                      Enable synchronous disk writes\n"
    "   --timeout MILLISEC          Busy timeout is MILLISEC\n"
    "   --trace BOOLEAN             Enable or disable tracing\n"
  );
  FUNC0(1);
}