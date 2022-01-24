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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  scalar_t__ GR_CURSOR_ID ;
typedef  int /*<<< orphan*/  GR_BITMAP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void * FUNC8(uint32 x, uint32 y,
                        int width, int height,
                        uint8 * andmask, uint8 * xormask)
{
  uint8 adata[128];
  uint8 amask[128];
  GR_BITMAP * databitmap;
  GR_BITMAP * maskbitmap;
  GR_CURSOR_ID cursor;
  int i1, i2, bon, mon;

  if (width != 32 || height != 32)
  {
    return 0;
  }
  FUNC4(adata, 0, 128);
  FUNC4(amask, 0, 128);
  for (i1 = 0; i1 <= 31; i1++)
  {
    for (i2 = 0; i2 <= 31; i2++)
    {
      mon = FUNC3(xormask, i1, i2);
      bon = FUNC2(andmask, i1, i2);
      if (bon ^ mon) // xor
      {
        FUNC5(adata, i1, i2);
        if (!mon)
        {
          FUNC5(amask, i1, i2);
        }
      }
      if (mon)
      {
        FUNC5(amask, i1, i2);
      }
    }
  }
  FUNC1(adata);
  FUNC1(amask);
  databitmap = FUNC6(32, 32, adata);
  maskbitmap = FUNC6(32, 32, amask);
  cursor = FUNC0(32, 32, x, y, 0xffffff, 0, databitmap, maskbitmap);
  FUNC7(databitmap);
  FUNC7(maskbitmap);
  return (void*)cursor;
}