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
 int HASHTABLE_HASH_1 ; 
 int HASHTABLE_NSLOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(u32 iPage){
  FUNC0( iPage>0 );
  FUNC0( (HASHTABLE_NSLOT & (HASHTABLE_NSLOT-1))==0 );
  return (iPage*HASHTABLE_HASH_1) & (HASHTABLE_NSLOT-1);
}