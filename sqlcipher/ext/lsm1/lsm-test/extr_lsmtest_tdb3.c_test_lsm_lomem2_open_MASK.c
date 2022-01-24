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
typedef  int /*<<< orphan*/  TestDb ;

/* Variables and functions */
 int FUNC0 (char const*,char const*,int,int /*<<< orphan*/ **) ; 

int FUNC1(
  const char *zSpec, 
  const char *zFilename, 
  int bClear, 
  TestDb **ppDb
){
    /* "max_freelist=4 autocheckpoint=32" */
  const char *zCfg = 
    "page_size=512 block_size=64 autoflush=0 mmap=0 "
  ;
  return FUNC0(zCfg, zFilename, bClear, ppDb);
}