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
typedef  int /*<<< orphan*/  u ;
typedef  int sqlite3_uint64 ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,double*,int) ; 

__attribute__((used)) static int FUNC2(double r){
  sqlite3_uint64 u;
  FUNC0( sizeof(u)==sizeof(r) );
  FUNC1(&u, &r, sizeof(u));
  return ((u>>52)&0x7ff)==0x7ff;
}