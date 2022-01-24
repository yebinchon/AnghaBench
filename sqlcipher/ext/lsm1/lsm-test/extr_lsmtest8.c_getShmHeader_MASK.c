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
typedef  int /*<<< orphan*/  ShmHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 char* FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,void*,int,int*) ; 

__attribute__((used)) static ShmHeader *FUNC4(const char *zDb){
  int rc = 0;
  char *zShm = FUNC2("%s-shm", zDb);
  ShmHeader *pHdr;

  pHdr = FUNC1(sizeof(ShmHeader));
  FUNC3(zShm, 0, (void *)pHdr, sizeof(ShmHeader), &rc);
  FUNC0( rc==0 );

  return pHdr;
}