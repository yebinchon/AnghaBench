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
typedef  int /*<<< orphan*/  lsm_env ;

/* Variables and functions */
 unsigned char* BLOCK_HDR_SIZE ; 

__attribute__((used)) static size_t FUNC0(lsm_env *pEnv, void *p){
  unsigned char * m = (unsigned char *)p;
  return *((size_t*)(m-BLOCK_HDR_SIZE));
}