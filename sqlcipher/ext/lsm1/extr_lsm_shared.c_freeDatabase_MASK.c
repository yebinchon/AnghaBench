#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_env ;
struct TYPE_4__ {struct TYPE_4__* apShmChunk; scalar_t__ pFile; int /*<<< orphan*/  pClientMutex; } ;
typedef  TYPE_1__ Database ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(lsm_env *pEnv, Database *p){
  FUNC0( FUNC1(pEnv) );
  if( p ){
    /* Free the mutexes */
    FUNC4(pEnv, p->pClientMutex);

    if( p->pFile ){
      FUNC2(pEnv, p->pFile);
    }

    /* Free the array of shm pointers */
    FUNC3(pEnv, p->apShmChunk);

    /* Free the memory allocated for the Database struct itself */
    FUNC3(pEnv, p);
  }
}