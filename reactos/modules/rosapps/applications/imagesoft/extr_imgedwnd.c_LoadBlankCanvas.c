
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* OpenInfo; int Height; int Width; } ;
struct TYPE_5__ {int Height; int Width; } ;
struct TYPE_6__ {TYPE_1__ New; } ;
typedef TYPE_3__* PEDIT_WND_INFO ;
typedef int BOOL ;


 int TRUE ;

__attribute__((used)) static BOOL
LoadBlankCanvas(PEDIT_WND_INFO Info)
{


    Info->Width = Info->OpenInfo->New.Width;
    Info->Height = Info->OpenInfo->New.Height;

    return TRUE;
}
