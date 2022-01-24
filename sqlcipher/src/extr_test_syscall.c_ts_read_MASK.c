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
 int FUNC0 (int,void*,size_t) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(int fd, void *aBuf, size_t nBuf){
  if( FUNC1("read") ){
    return -1;
  }
  return FUNC0(fd, aBuf, nBuf);
}