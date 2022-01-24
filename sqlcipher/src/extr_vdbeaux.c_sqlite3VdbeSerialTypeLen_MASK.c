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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* sqlite3SmallTypeSizes ; 

u32 FUNC1(u32 serial_type){
  if( serial_type>=128 ){
    return (serial_type-12)/2;
  }else{
    FUNC0( serial_type<12 
            || sqlite3SmallTypeSizes[serial_type]==(serial_type - 12)/2 );
    return sqlite3SmallTypeSizes[serial_type];
  }
}