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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* cType ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *z){
  int j;
  char x = *z;
  if( x==0 ) return 0;
  FUNC0( x>='a' && x<='z' );
  j = cType[x-'a'];
  if( j<2 ) return 1-j;
  return FUNC1(z + 1);
}