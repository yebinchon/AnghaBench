
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int Left; int Right; int Top; int Bottom; } ;
typedef TYPE_1__ SMALL_RECT ;
typedef TYPE_1__* PSMALL_RECT ;
typedef int * HANDLE ;


 scalar_t__ DoubleHeight ;
 scalar_t__ DoubleWidth ;
 scalar_t__ GRAPHICS_MODE ;
 int * GraphicsConsoleBuffer ;
 scalar_t__ ScreenMode ;
 int * TextConsoleBuffer ;
 int __InvalidateConsoleDIBits (int *,TYPE_1__*) ;

VOID VgaConsoleRepaintScreen(PSMALL_RECT Rect)
{
    HANDLE ConsoleBufferHandle = ((void*)0);
    SMALL_RECT UpdateRectangle = *Rect;


    if (ScreenMode == GRAPHICS_MODE)
    {

        ConsoleBufferHandle = GraphicsConsoleBuffer;


        if (DoubleWidth)
        {
            UpdateRectangle.Left *= 2;
            UpdateRectangle.Right = UpdateRectangle.Right * 2 + 1;
        }
        if (DoubleHeight)
        {
            UpdateRectangle.Top *= 2;
            UpdateRectangle.Bottom = UpdateRectangle.Bottom * 2 + 1;
        }
    }
    else
    {

        ConsoleBufferHandle = TextConsoleBuffer;
    }


    __InvalidateConsoleDIBits(ConsoleBufferHandle, &UpdateRectangle);
}
