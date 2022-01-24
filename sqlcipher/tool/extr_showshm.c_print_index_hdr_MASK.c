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
 int /*<<< orphan*/  FG_NBO ; 
 int /*<<< orphan*/  FG_PGSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(unsigned char *aData, int ix){
  int i;
  FUNC0( ix==0 || ix==1 );
  i = ix ? 48 : 0;
  FUNC1(aData, 0+i, 4, FG_NBO,  "Wal-index version");
  FUNC1(aData, 4+i, 4, 0,       "unused padding");
  FUNC1(aData, 8+i, 4, FG_NBO,  "transaction counter");
  FUNC1(aData,12+i, 1, 0,       "1 when initialized");
  FUNC1(aData,13+i, 1, 0,       "true if WAL cksums are bigendian");
  FUNC1(aData,14+i, 2, FG_PGSZ, "database page size");
  FUNC1(aData,16+i, 4, FG_NBO,  "mxFrame");
  FUNC1(aData,20+i, 4, FG_NBO,  "Size of database in pages");
  FUNC1(aData,24+i, 8, 0, "Cksum of last frame in -wal");
  FUNC1(aData,32+i, 8, 0,  "Salt values from the -wal");
  FUNC1(aData,40+i, 8, 0,  "Cksum over all prior fields");
}