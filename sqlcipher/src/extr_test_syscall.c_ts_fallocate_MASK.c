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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int FUNC3(int fd, off_t off, off_t len){
  if( FUNC2() ){
    return FUNC1("fallocate");
  }
  return FUNC0(fd, off, len);
}