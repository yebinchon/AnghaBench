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
 scalar_t__ FUNC0 (char const*,char const*,int) ; 
 char const* FUNC1 (char const*) ; 

__attribute__((used)) static const char *FUNC2(const char *zTag, int nTag, const char *z){
  z = FUNC1(z);
  if( FUNC0(zTag, z, nTag)!=0 ) return 0;
  z = FUNC1(z+nTag);
  if( z[0]!='=' ) return 0;
  return FUNC1(z+1);
}