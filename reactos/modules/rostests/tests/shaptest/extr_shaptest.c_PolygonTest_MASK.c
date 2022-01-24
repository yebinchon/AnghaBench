#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int member_0; int member_1; } ;
typedef  TYPE_1__ POINT ;
typedef  scalar_t__ HPEN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBRUSH ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ALTERNATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_NULL ; 
 int /*<<< orphan*/  PS_SOLID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINDING ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

void FUNC12 ( HDC hdc )
{
  HPEN Pen, OldPen;
  HBRUSH RedBrush, OldBrush;
  DWORD Mode;
  POINT PointsAlternate[] =
  {
    { 20, 80 },
    { 60, 20 },
    { 90, 80 },
    { 20, 40 },
    { 100, 40 }
  };
  POINT PointsWinding[] =
  {
    { 130, 80 },
    { 170, 20 },
    { 200, 80 },
    { 130, 40 },
    { 210, 40 }
  };
  POINT Tri1[] =
  {
    { 3, 3 },
    { 5, 3 },
    { 3, 5 }
  };
  POINT Tri2[] =
  {
    { 7, 3 },
    { 7, 7 },
    { 3, 7 },
  };
  POINT Square1[] =
  {
    { 1, 15 },
    { 3, 15 },
    { 3, 17 },
    { 1, 17 }
  };
  POINT Square2[] =
  {
    { 5, 15 },
    { 7, 15 },
    { 7, 17 },
    { 5, 17 }
  };
  POINT Square3[] =
  {
    { 1, 23 },
    { 3, 23 },
    { 3, 25 },
    { 1, 25 }
  };
  POINT Square4[] =
  {
    { 5, 23 },
    { 7, 23 },
    { 7, 25 },
    { 5, 25 }
  };
  POINT Square5[] =
  {
    { 1, 31 },
    { 3, 31 },
    { 3, 33 },
    { 1, 33 }
  };
  POINT Square6[] =
  {
    { 5, 31 },
    { 7, 31 },
    { 7, 33 },
    { 5, 33 }
  };

  //create a pen to draw the shape
  Pen = FUNC1(PS_SOLID, 1, FUNC6(0, 0, 0xff));
  FUNC0(Pen);
  RedBrush = FUNC2(FUNC6(0xff, 0, 0));
  FUNC0(RedBrush);

  OldPen = (HPEN)FUNC9(hdc, Pen);
  OldBrush = (HBRUSH)FUNC9(hdc, RedBrush);

  Mode = FUNC4(hdc);

  FUNC8 ( hdc, 32, 8, 48, 24, 8, 8 );

  FUNC10(hdc, ALTERNATE);
  FUNC5(hdc,PointsAlternate,FUNC11(PointsAlternate));

  FUNC10(hdc, WINDING);
  FUNC5(hdc,PointsWinding,FUNC11(PointsWinding));

  FUNC7 ( hdc, 1, 1, 10, 10 );
  FUNC5(hdc,Tri1,FUNC11(Tri1));
  FUNC5(hdc,Tri2,FUNC11(Tri2));

  FUNC7 ( hdc,  1, 11,  4, 14 );
  FUNC7 ( hdc,  5, 11,  8, 14 );
  FUNC7 ( hdc,  9, 11, 12, 14 );
  FUNC7 ( hdc, 13, 11, 16, 14 );
  FUNC5(hdc,Square1,FUNC11(Square1));
  FUNC5(hdc,Square2,FUNC11(Square2));
  FUNC7 ( hdc,  1, 19,  4, 22 );
  FUNC7 ( hdc,  5, 19,  8, 22 );
  FUNC7 ( hdc,  9, 19, 12, 22 );
  FUNC7 ( hdc, 13, 19, 16, 22 );
  FUNC5(hdc,Square3,FUNC11(Square3));
  FUNC5(hdc,Square4,FUNC11(Square4));
  FUNC7 ( hdc,  1, 27,  4, 30 );
  FUNC7 ( hdc,  5, 27,  8, 30 );
  FUNC7 ( hdc,  9, 27, 12, 30 );
  FUNC7 ( hdc, 13, 27, 16, 30 );

  // switch to null pen to make surey they display correctly
  FUNC3 ( FUNC9(hdc, OldPen) );
  Pen = FUNC1 ( PS_NULL, 0, 0 );
  FUNC0(Pen);
  OldPen = (HPEN)FUNC9(hdc, Pen);

  FUNC5(hdc,Square5,FUNC11(Square5));
  FUNC5(hdc,Square6,FUNC11(Square6));
  FUNC7 ( hdc,  1, 35,  4, 38 );
  FUNC7 ( hdc,  5, 35,  8, 38 );
  FUNC7 ( hdc,  9, 35, 12, 38 );
  FUNC7 ( hdc, 13, 35, 16, 38 );

  //cleanup
  FUNC10(hdc, Mode);
  FUNC3 ( FUNC9(hdc, OldPen) );
  FUNC3 ( FUNC9(hdc, OldBrush) );
}