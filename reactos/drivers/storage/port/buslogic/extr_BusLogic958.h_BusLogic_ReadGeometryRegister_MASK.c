#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {scalar_t__ IO_Address; } ;
typedef  TYPE_1__ BusLogic_HostAdapter_T ;

/* Variables and functions */
 scalar_t__ BusLogic_GeometryRegisterOffset ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static UCHAR
FUNC1(BusLogic_HostAdapter_T *HostAdapter)
{
  return FUNC0(HostAdapter->IO_Address + BusLogic_GeometryRegisterOffset);
}