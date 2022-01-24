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
struct TYPE_2__ {char const* zName; int custom_errno; } ;

/* Variables and functions */
 TYPE_1__* aSyscall ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *zFunc){
  int i;
  int nFunc = FUNC2(zFunc);
  for(i=0; aSyscall[i].zName; i++){
    if( FUNC2(aSyscall[i].zName)!=nFunc ) continue;
    if( FUNC1(aSyscall[i].zName, zFunc, nFunc) ) continue;
    return aSyscall[i].custom_errno;
  }

  FUNC0(0);
  return 0;
}