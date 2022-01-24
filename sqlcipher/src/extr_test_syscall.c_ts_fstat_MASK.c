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
struct stat {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,struct stat*) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(int fd, struct stat *p){
  if( FUNC1("fstat") ){
    return -1;
  }
  return FUNC0(fd, p);
}