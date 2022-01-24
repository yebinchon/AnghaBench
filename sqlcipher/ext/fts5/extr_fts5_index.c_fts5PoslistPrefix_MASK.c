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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const u8 *aBuf, int nMax){
  int ret;
  u32 dummy;
  ret = FUNC0(aBuf, dummy);
  if( ret<nMax ){
    while( 1 ){
      int i = FUNC0(&aBuf[ret], dummy);
      if( (ret + i) > nMax ) break;
      ret += i;
    }
  }
  return ret;
}