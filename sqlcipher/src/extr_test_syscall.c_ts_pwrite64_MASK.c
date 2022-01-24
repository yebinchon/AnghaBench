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
typedef  int /*<<< orphan*/  sqlite3_uint64 ;

/* Variables and functions */
 int FUNC0 (int,void const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(int fd, const void *aBuf, size_t nBuf, sqlite3_uint64 off){
  if( FUNC1("pwrite64") ){
    return -1;
  }
  return FUNC0(fd, aBuf, nBuf, off);
}