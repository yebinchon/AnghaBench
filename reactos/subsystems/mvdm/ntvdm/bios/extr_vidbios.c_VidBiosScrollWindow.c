
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_5__ {int VideoPageSize; int VideoMode; int ScreenColumns; int ScreenRows; } ;
struct TYPE_4__ {scalar_t__ Left; scalar_t__ Right; scalar_t__ Top; scalar_t__ Bottom; } ;
typedef TYPE_1__ SMALL_RECT ;
typedef int SCROLL_DIRECTION ;
typedef int LPVOID ;
typedef int INT ;
typedef int FillCharacter ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOLEAN ;


 TYPE_3__* Bda ;
 int DPRINT1 (char*,int) ;
 int EmulatorContext ;
 int EmulatorCopyMemory (int *,scalar_t__,scalar_t__,int) ;
 int EmulatorWriteMemory (int *,scalar_t__,int ,int) ;
 int FALSE ;
 scalar_t__ MAKEWORD (char,int) ;




 int TEXT_VIDEO_SEG ;
 scalar_t__ TO_LINEAR (int ,int) ;
 int TRUE ;
 int max (scalar_t__,int ) ;
 void* min (int ,int) ;

__attribute__((used)) static BOOLEAN VidBiosScrollWindow(SCROLL_DIRECTION Direction,
                                   DWORD Amount,
                                   SMALL_RECT Rectangle,
                                   BYTE Page,
                                   BYTE FillAttribute)
{
    INT i, j;
    DWORD VideoAddress = TO_LINEAR(TEXT_VIDEO_SEG, Page * Bda->VideoPageSize);
    WORD FillCharacter = MAKEWORD(' ', FillAttribute);

    WORD WindowWidth, WindowHeight;


    if (Bda->VideoMode > 3)
    {
        DPRINT1("VidBiosScrollWindow: not implemented for mode 0%Xh\n", Bda->VideoMode);
        return FALSE;
    }


    Rectangle.Left = min(max(Rectangle.Left , 0), Bda->ScreenColumns - 1);
    Rectangle.Right = min(max(Rectangle.Right , 0), Bda->ScreenColumns - 1);
    Rectangle.Top = min(max(Rectangle.Top , 0), Bda->ScreenRows);
    Rectangle.Bottom = min(max(Rectangle.Bottom, 0), Bda->ScreenRows);

    WindowWidth = Rectangle.Right - Rectangle.Left + 1;
    WindowHeight = Rectangle.Bottom - Rectangle.Top + 1;


    if ((Amount == 0) ||
        (((Direction == 128 ) || (Direction == 131 )) && (Amount >= WindowHeight)) ||
        (((Direction == 130) || (Direction == 129)) && (Amount >= WindowWidth )))
    {

        for (i = Rectangle.Top; i <= Rectangle.Bottom; i++)
        {
            for (j = Rectangle.Left; j <= Rectangle.Right; j++)
            {
                EmulatorWriteMemory(&EmulatorContext,
                                    VideoAddress + (i * Bda->ScreenColumns + j) * sizeof(WORD),
                                    (LPVOID)&FillCharacter,
                                    sizeof(FillCharacter));
            }
        }

        return TRUE;
    }

    switch (Direction)
    {
        case 128:
        {

            for (i = Rectangle.Top + Amount; i <= Rectangle.Bottom; i++)
            {
                EmulatorCopyMemory(&EmulatorContext,
                                   VideoAddress + ((i - Amount) * Bda->ScreenColumns + Rectangle.Left) * sizeof(WORD),
                                   VideoAddress + ( i * Bda->ScreenColumns + Rectangle.Left) * sizeof(WORD),
                                   (Rectangle.Right - Rectangle.Left + 1) * sizeof(WORD));
            }


            for (i = Rectangle.Bottom - Amount + 1; i <= Rectangle.Bottom; i++)
            {
                for (j = Rectangle.Left; j <= Rectangle.Right; j++)
                {
                    EmulatorWriteMemory(&EmulatorContext,
                                        VideoAddress + (i * Bda->ScreenColumns + j) * sizeof(WORD),
                                        (LPVOID)&FillCharacter,
                                        sizeof(FillCharacter));
                }
            }

            break;
        }

        case 131:
        {
            INT Bottom;


            for (i = Rectangle.Bottom - Amount; i >= Rectangle.Top; i--)
            {
                EmulatorCopyMemory(&EmulatorContext,
                                   VideoAddress + ((i + Amount) * Bda->ScreenColumns + Rectangle.Left) * sizeof(WORD),
                                   VideoAddress + ( i * Bda->ScreenColumns + Rectangle.Left) * sizeof(WORD),
                                   (Rectangle.Right - Rectangle.Left + 1) * sizeof(WORD));
            }


            Bottom = Rectangle.Top + Amount - 1;
            for (i = Rectangle.Top; i <= Bottom; i++)
            {
                for (j = Rectangle.Left; j <= Rectangle.Right; j++)
                {
                    EmulatorWriteMemory(&EmulatorContext,
                                        VideoAddress + (i * Bda->ScreenColumns + j) * sizeof(WORD),
                                        (LPVOID)&FillCharacter,
                                        sizeof(FillCharacter));
                }
            }

            break;
        }

        case 130:
        {

            for (i = Rectangle.Top; i <= Rectangle.Bottom; i++)
            {
                EmulatorCopyMemory(&EmulatorContext,
                                   VideoAddress + (i * Bda->ScreenColumns + Rectangle.Left ) * sizeof(WORD),
                                   VideoAddress + (i * Bda->ScreenColumns + Rectangle.Left + Amount) * sizeof(WORD),
                                   (Rectangle.Right - Rectangle.Left - Amount + 1) * sizeof(WORD));
            }


            for (i = Rectangle.Top; i <= Rectangle.Bottom; i++)
            {
                for (j = Rectangle.Right - Amount + 1; j <= Rectangle.Right; j++)
                {
                    EmulatorWriteMemory(&EmulatorContext,
                                        VideoAddress + (i * Bda->ScreenColumns + j) * sizeof(WORD),
                                        (LPVOID)&FillCharacter,
                                        sizeof(FillCharacter));
                }
            }

            break;
        }

        case 129:
        {
            INT Right;


            for (i = Rectangle.Top; i <= Rectangle.Bottom; i++)
            {
                EmulatorCopyMemory(&EmulatorContext,
                                   VideoAddress + (i * Bda->ScreenColumns + Rectangle.Left + Amount) * sizeof(WORD),
                                   VideoAddress + (i * Bda->ScreenColumns + Rectangle.Left ) * sizeof(WORD),
                                   (Rectangle.Right - Rectangle.Left - Amount + 1) * sizeof(WORD));
            }


            Right = Rectangle.Left + Amount - 1;
            for (i = Rectangle.Top; i <= Rectangle.Bottom; i++)
            {
                for (j = Rectangle.Left; j <= Right; j++)
                {
                    EmulatorWriteMemory(&EmulatorContext,
                                        VideoAddress + (i * Bda->ScreenColumns + j) * sizeof(WORD),
                                        (LPVOID)&FillCharacter,
                                        sizeof(FillCharacter));
                }
            }

            break;
        }
    }

    return TRUE;
}
