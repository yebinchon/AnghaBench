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
struct TYPE_3__ {char* zName; int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_1__ PosixFile ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(PosixFile *p){
  char *zShm;
  int nName = FUNC2(p->zName);
  zShm = (char *)FUNC0(p->pEnv, nName+4+1);
  if( zShm ){
    FUNC1(zShm, p->zName, nName);
    FUNC1(&zShm[nName], "-shm", 5);
  }
  return zShm;
}