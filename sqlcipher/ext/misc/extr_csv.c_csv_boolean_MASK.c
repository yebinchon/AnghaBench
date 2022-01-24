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
 scalar_t__ FUNC0 (char*,char const*) ; 

__attribute__((used)) static int FUNC1(const char *z){
  if( FUNC0("yes",z)==0
   || FUNC0("on",z)==0
   || FUNC0("true",z)==0
   || (z[0]=='1' && z[1]==0)
  ){
    return 1;
  }
  if( FUNC0("no",z)==0
   || FUNC0("off",z)==0
   || FUNC0("false",z)==0
   || (z[0]=='0' && z[1]==0)
  ){
    return 0;
  }
  return -1;
}