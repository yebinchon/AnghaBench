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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static int FUNC2(const u8 *p, int *pnSz, int *pbDel){
  int nSz;
  int n = 0;
  FUNC1(p, n, nSz);
  FUNC0( nSz>=0 );
  *pnSz = nSz/2;
  *pbDel = nSz & 0x0001;
  return n;
}