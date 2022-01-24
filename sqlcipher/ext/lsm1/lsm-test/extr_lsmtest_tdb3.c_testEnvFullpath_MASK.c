#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* xFullpath ) (TYPE_1__*,char const*,char*,int*) ;} ;
typedef  TYPE_1__ lsm_env ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char const*,char*,int*) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static int FUNC2(
  lsm_env *pEnv,                  /* Environment for current LsmDb */
  const char *zFile,              /* Relative path name */
  char *zOut,                     /* Output buffer */
  int *pnOut                      /* IN/OUT: Size of output buffer */
){
  lsm_env *pRealEnv = FUNC1();
  return pRealEnv->xFullpath(pRealEnv, zFile, zOut, pnOut);
}