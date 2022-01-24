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
 int FUNC0 (char* const*) ; 
 scalar_t__ PAGER_JOURNALMODE_DELETE ; 
 int PAGER_JOURNALMODE_MEMORY ; 
 int PAGER_JOURNALMODE_OFF ; 
 int PAGER_JOURNALMODE_PERSIST ; 
 int PAGER_JOURNALMODE_TRUNCATE ; 
 int PAGER_JOURNALMODE_WAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

const char *FUNC2(int eMode){
  static char * const azModeName[] = {
    "delete", "persist", "off", "truncate", "memory"
#ifndef SQLITE_OMIT_WAL
     , "wal"
#endif
  };
  FUNC1( PAGER_JOURNALMODE_DELETE==0 );
  FUNC1( PAGER_JOURNALMODE_PERSIST==1 );
  FUNC1( PAGER_JOURNALMODE_OFF==2 );
  FUNC1( PAGER_JOURNALMODE_TRUNCATE==3 );
  FUNC1( PAGER_JOURNALMODE_MEMORY==4 );
  FUNC1( PAGER_JOURNALMODE_WAL==5 );
  FUNC1( eMode>=0 && eMode<=FUNC0(azModeName) );

  if( eMode==FUNC0(azModeName) ) return 0;
  return azModeName[eMode];
}