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
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 

__attribute__((used)) static void FUNC1(void *aData, const char *zType, int sz, const char *zArg){
  struct Entry { const char *zName; };
  struct Entry *pEntry;
  const char *zPrev = 0;

  FUNC0("unrecognized %s \"%s\": must be ", zType, zArg);
  for(pEntry=(struct Entry *)aData; 
      pEntry->zName; 
      pEntry=(struct Entry *)&((unsigned char *)pEntry)[sz]
  ){
    if( zPrev ){ FUNC0("%s, ", zPrev); }
    zPrev = pEntry->zName;
  }
  FUNC0("or %s\n", zPrev);
}