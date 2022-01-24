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
typedef  int UInt32 ;
typedef  int /*<<< orphan*/  EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static
void FUNC1 ( EState* s, UInt32 u )
{
   FUNC0 ( s, 8, (u >> 24) & 0xffL );
   FUNC0 ( s, 8, (u >> 16) & 0xffL );
   FUNC0 ( s, 8, (u >>  8) & 0xffL );
   FUNC0 ( s, 8,  u        & 0xffL );
}