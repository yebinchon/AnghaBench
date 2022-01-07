
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ biCompression; int biBitCount; } ;
struct TYPE_6__ {TYPE_1__ bmiHeader; scalar_t__ bmiColors; } ;
typedef int HDC ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_2__ BITMAPINFO ;


 scalar_t__ BI_BITFIELDS ;
 int FALSE ;
 int TRUE ;
 int draw_text_2 (int ,TYPE_2__ const*,int *,int ) ;

__attribute__((used)) static void draw_text( HDC hdc, const BITMAPINFO *bmi, BYTE *bits )
{
    draw_text_2( hdc, bmi, bits, FALSE );


    if ((bmi->bmiHeader.biCompression == BI_BITFIELDS && ((DWORD*)bmi->bmiColors)[0] == 0x3f000) ||
        (bmi->bmiHeader.biBitCount == 16))
        return;

    draw_text_2( hdc, bmi, bits, TRUE );
}
