#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef  TYPE_1__ ULARGE_INTEGER ;
typedef  int /*<<< orphan*/  BlockChainStream ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC3(
  BlockChainStream* This,
  ULARGE_INTEGER    newSize)
{
  ULARGE_INTEGER size = FUNC1(This);

  if (newSize.QuadPart == size.QuadPart)
    return TRUE;

  if (newSize.QuadPart < size.QuadPart)
  {
    FUNC2(This, newSize);
  }
  else
  {
    FUNC0(This, newSize);
  }

  return TRUE;
}