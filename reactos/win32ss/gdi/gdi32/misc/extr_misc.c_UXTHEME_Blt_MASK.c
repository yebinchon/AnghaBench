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
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline BOOL FUNC1(HDC hdcDest, int nXOriginDest, int nYOriginDest, int nWidthDest, int nHeightDest,
                               HDC hdcSrc, int nXOriginSrc, int nYOriginSrc,
                               INT transparent, COLORREF transcolor)
{
    return FUNC0(hdcDest, nXOriginDest, nYOriginDest, nWidthDest, nHeightDest,
                              hdcSrc, nXOriginSrc, nYOriginSrc, nWidthDest, nHeightDest,
                              transparent, transcolor);
}