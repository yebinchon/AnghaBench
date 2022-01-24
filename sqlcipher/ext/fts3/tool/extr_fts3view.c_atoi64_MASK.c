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
typedef  int sqlite3_int64 ;

/* Variables and functions */

__attribute__((used)) static sqlite3_int64 FUNC0(const char *z){
  sqlite3_int64 v = 0;
  while( z[0]>='0' && z[0]<='9' ){
     v = v*10 + z[0] - '0';
     z++;
  }
  return v;
}