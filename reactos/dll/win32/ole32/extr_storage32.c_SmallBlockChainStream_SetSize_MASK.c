#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ LowPart; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef  TYPE_2__ ULARGE_INTEGER ;
typedef  int /*<<< orphan*/  SmallBlockChainStream ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC3(
                SmallBlockChainStream* This,
                ULARGE_INTEGER    newSize)
{
  ULARGE_INTEGER size = FUNC1(This);

  if (newSize.u.LowPart == size.u.LowPart)
    return TRUE;

  if (newSize.u.LowPart < size.u.LowPart)
  {
    FUNC2(This, newSize);
  }
  else
  {
    FUNC0(This, newSize);
  }

  return TRUE;
}