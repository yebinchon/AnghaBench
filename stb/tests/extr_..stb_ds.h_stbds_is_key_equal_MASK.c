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
 int STBDS_HM_STRING ; 
 scalar_t__ FUNC0 (void*,char*,size_t) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(void *a, size_t elemsize, void *key, size_t keysize, int mode, size_t i)
{
  if (mode >= STBDS_HM_STRING)
    return 0==FUNC1((char *) key, * (char **) ((char *) a + elemsize*i));
  else
    return 0==FUNC0(key, (char *) a + elemsize*i, keysize);
}