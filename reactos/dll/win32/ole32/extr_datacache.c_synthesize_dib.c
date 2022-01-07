
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int header ;
struct TYPE_14__ {int biSize; int biHeight; scalar_t__ biSizeImage; } ;
struct TYPE_12__ {int hGlobal; } ;
struct TYPE_13__ {int * pUnkForRelease; int tymed; TYPE_1__ u; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef int HRESULT ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int DWORD ;
typedef TYPE_3__ BITMAPINFOHEADER ;
typedef TYPE_3__ BITMAPINFO ;


 int DIB_RGB_COLORS ;
 int E_FAIL ;
 int GMEM_MOVEABLE ;
 int GetDC (int ) ;
 int GetDIBits (int ,int ,int ,int ,char*,TYPE_3__*,int ) ;
 int GlobalAlloc (int ,scalar_t__) ;
 TYPE_3__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int ReleaseDC (int ,int ) ;
 int S_OK ;
 int TYMED_HGLOBAL ;
 int abs (int ) ;
 int bitmap_info_size (TYPE_3__*,int ) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static HRESULT synthesize_dib( HBITMAP bm, STGMEDIUM *med )
{
    HDC hdc = GetDC( 0 );
    BITMAPINFOHEADER header;
    BITMAPINFO *bmi;
    HRESULT hr = E_FAIL;
    DWORD header_size;

    memset( &header, 0, sizeof(header) );
    header.biSize = sizeof(header);
    if (!GetDIBits( hdc, bm, 0, 0, ((void*)0), (BITMAPINFO *)&header, DIB_RGB_COLORS )) goto done;

    header_size = bitmap_info_size( (BITMAPINFO *)&header, DIB_RGB_COLORS );
    if (!(med->u.hGlobal = GlobalAlloc( GMEM_MOVEABLE, header_size + header.biSizeImage ))) goto done;
    bmi = GlobalLock( med->u.hGlobal );
    memset( bmi, 0, header_size );
    memcpy( bmi, &header, header.biSize );
    GetDIBits( hdc, bm, 0, abs(header.biHeight), (char *)bmi + header_size, bmi, DIB_RGB_COLORS );
    GlobalUnlock( med->u.hGlobal );
    med->tymed = TYMED_HGLOBAL;
    med->pUnkForRelease = ((void*)0);
    hr = S_OK;

done:
    ReleaseDC( 0, hdc );
    return hr;
}
