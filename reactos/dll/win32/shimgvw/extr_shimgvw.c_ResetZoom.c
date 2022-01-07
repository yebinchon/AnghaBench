
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int right; int bottom; } ;
typedef TYPE_1__ RECT ;


 int GdipGetImageHeight (int ,int*) ;
 int GdipGetImageWidth (int ,int*) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int ZoomPercents ;
 int hDispWnd ;
 int image ;

__attribute__((used)) static void ResetZoom(void)
{
    RECT Rect;
    UINT ImageWidth, ImageHeight;


    GetClientRect(hDispWnd, &Rect);
    GdipGetImageWidth(image, &ImageWidth);
    GdipGetImageHeight(image, &ImageHeight);



    if (ImageHeight * Rect.right < Rect.bottom * ImageWidth)
    {
        if (Rect.right < ImageWidth)
        {

            ZoomPercents = (Rect.right * 100) / ImageWidth;
        }
        else
        {

            ZoomPercents = 100;
        }
    }
    else
    {
        if (Rect.bottom < ImageHeight)
        {

            ZoomPercents = (Rect.bottom * 100) / ImageHeight;
        }
        else
        {

            ZoomPercents = 100;
        }
    }
}
