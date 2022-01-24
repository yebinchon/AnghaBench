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
typedef  int /*<<< orphan*/  ret ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char*) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int nRange){
  unsigned int ret;
  FUNC0( nRange>0 );
  FUNC1(sizeof(ret), (unsigned char*)&ret);
  return (ret % nRange);
}