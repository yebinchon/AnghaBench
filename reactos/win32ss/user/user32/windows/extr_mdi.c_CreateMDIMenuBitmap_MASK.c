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
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_PEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBM_OLD_CLOSE ; 
 int /*<<< orphan*/  SM_CXSIZE ; 
 int /*<<< orphan*/  SM_CYSIZE ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HBITMAP FUNC12(void)
{
 HDC 		hDCSrc  = FUNC2(0);
 HDC		hDCDest	= FUNC2(hDCSrc);
 HBITMAP	hbClose = FUNC8(0, FUNC9(OBM_OLD_CLOSE) );
 HBITMAP	hbCopy;
 HBITMAP	hobjSrc, hobjDest;

 hobjSrc = FUNC11(hDCSrc, hbClose);
 hbCopy = FUNC1(hDCSrc,FUNC6(SM_CXSIZE),FUNC6(SM_CYSIZE));
 hobjDest = FUNC11(hDCDest, hbCopy);

 FUNC0(hDCDest, 0, 0, FUNC6(SM_CXSIZE), FUNC6(SM_CYSIZE),
          hDCSrc, FUNC6(SM_CXSIZE), 0, SRCCOPY);

 FUNC11(hDCSrc, hobjSrc);
 FUNC4(hbClose);
 FUNC3(hDCSrc);

 hobjSrc = FUNC11( hDCDest, FUNC5(BLACK_PEN) );

 FUNC10( hDCDest, FUNC6(SM_CXSIZE) - 1, 0, NULL );
 FUNC7( hDCDest, FUNC6(SM_CXSIZE) - 1, FUNC6(SM_CYSIZE) - 1);

 FUNC11(hDCDest, hobjSrc );
 FUNC11(hDCDest, hobjDest);
 FUNC3(hDCDest);

 return hbCopy;
}