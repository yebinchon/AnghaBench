
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int bmiHeader; } ;
struct TYPE_8__ {int hBitmap; } ;
struct TYPE_9__ {int * pUnkForRelease; int tymed; TYPE_1__ u; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef int HRESULT ;
typedef int HGLOBAL ;
typedef int HDC ;
typedef TYPE_3__ BITMAPINFO ;


 int CBM_INIT ;
 int CreateDIBitmap (int ,int *,int ,char*,TYPE_3__*,int ) ;
 int DIB_RGB_COLORS ;
 int E_FAIL ;
 int GetDC (int ) ;
 TYPE_3__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int ReleaseDC (int ,int ) ;
 int S_OK ;
 int TYMED_GDI ;
 int bitmap_info_size (TYPE_3__*,int ) ;

__attribute__((used)) static HRESULT synthesize_bitmap( HGLOBAL dib, STGMEDIUM *med )
{
    HRESULT hr = E_FAIL;
    BITMAPINFO *bmi;
    HDC hdc = GetDC( 0 );

    if ((bmi = GlobalLock( dib )))
    {

        med->u.hBitmap = CreateDIBitmap( hdc, &bmi->bmiHeader, CBM_INIT,
                                         (char *)bmi + bitmap_info_size( bmi, DIB_RGB_COLORS ),
                                         bmi, DIB_RGB_COLORS );
        GlobalUnlock( dib );
        med->tymed = TYMED_GDI;
        med->pUnkForRelease = ((void*)0);
        hr = S_OK;
    }
    ReleaseDC( 0, hdc );
    return hr;
}
