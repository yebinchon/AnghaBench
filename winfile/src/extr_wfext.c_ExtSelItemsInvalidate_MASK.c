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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ lplpxdtaExtSelItems ; 
 scalar_t__ uExtSelItems ; 

VOID
FUNC1()
{
   if (uExtSelItems != (UINT)-1) {

      if (lplpxdtaExtSelItems) {
         FUNC0(lplpxdtaExtSelItems);
      }

      uExtSelItems = (UINT)-1;
   }
}