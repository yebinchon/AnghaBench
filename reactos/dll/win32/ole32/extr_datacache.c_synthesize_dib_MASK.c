#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  header ;
struct TYPE_14__ {int biSize; int /*<<< orphan*/  biHeight; scalar_t__ biSizeImage; } ;
struct TYPE_12__ {int /*<<< orphan*/  hGlobal; } ;
struct TYPE_13__ {int /*<<< orphan*/ * pUnkForRelease; int /*<<< orphan*/  tymed; TYPE_1__ u; } ;
typedef  TYPE_2__ STGMEDIUM ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int DWORD ;
typedef  TYPE_3__ BITMAPINFOHEADER ;
typedef  TYPE_3__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TYMED_HGLOBAL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC10( HBITMAP bm, STGMEDIUM *med )
{
    HDC hdc = FUNC0( 0 );
    BITMAPINFOHEADER header;
    BITMAPINFO *bmi;
    HRESULT hr = E_FAIL;
    DWORD header_size;

    FUNC9( &header, 0, sizeof(header) );
    header.biSize = sizeof(header);
    if (!FUNC1( hdc, bm, 0, 0, NULL, (BITMAPINFO *)&header, DIB_RGB_COLORS )) goto done;

    header_size = FUNC7( (BITMAPINFO *)&header, DIB_RGB_COLORS );
    if (!(med->u.hGlobal = FUNC2( GMEM_MOVEABLE, header_size + header.biSizeImage ))) goto done;
    bmi = FUNC3( med->u.hGlobal );
    FUNC9( bmi, 0, header_size );
    FUNC8( bmi, &header, header.biSize );
    FUNC1( hdc, bm, 0, FUNC6(header.biHeight), (char *)bmi + header_size, bmi, DIB_RGB_COLORS );
    FUNC4( med->u.hGlobal );
    med->tymed = TYMED_HGLOBAL;
    med->pUnkForRelease = NULL;
    hr = S_OK;

done:
    FUNC5( 0, hdc );
    return hr;
}