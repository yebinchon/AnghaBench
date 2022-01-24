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
typedef  int /*<<< orphan*/  sqlite3_vfs ;
struct TYPE_3__ {char const* zName; scalar_t__ pCurrent; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* aSyscall ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static const char *FUNC3(sqlite3_vfs *p, const char *zName){
  int i = -1;

  FUNC1(p);
  if( zName ){
    for(i=0; i<FUNC0(aSyscall)-1; i++){
      if( FUNC2(zName, aSyscall[i].zName)==0 ) break;
    }
  }
  for(i++; i<FUNC0(aSyscall); i++){
    if( aSyscall[i].pCurrent!=0 ) return aSyscall[i].zName;
  }
  return 0;
}