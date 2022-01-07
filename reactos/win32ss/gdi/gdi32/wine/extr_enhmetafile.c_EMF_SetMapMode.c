
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; int wndExtX; int wndExtY; int vportExtX; int vportExtY; } ;
struct TYPE_5__ {TYPE_1__ state; } ;
typedef TYPE_2__ enum_emh_data ;
typedef int INT ;
typedef int HDC ;


 int GetDeviceCaps (int ,int ) ;
 int HORZRES ;
 int HORZSIZE ;
 void* MulDiv (int,int,int) ;
 int TRACE (char*,int) ;
 int VERTRES ;
 int VERTSIZE ;

__attribute__((used)) static void EMF_SetMapMode(HDC hdc, enum_emh_data *info)
{
    INT horzSize = GetDeviceCaps( hdc, HORZSIZE );
    INT vertSize = GetDeviceCaps( hdc, VERTSIZE );
    INT horzRes = GetDeviceCaps( hdc, HORZRES );
    INT vertRes = GetDeviceCaps( hdc, VERTRES );

    TRACE("%d\n", info->state.mode);

    switch(info->state.mode)
    {
    case 129:
        info->state.wndExtX = 1;
        info->state.wndExtY = 1;
        info->state.vportExtX = 1;
        info->state.vportExtY = 1;
        break;
    case 130:
    case 132:
        info->state.wndExtX = horzSize * 10;
        info->state.wndExtY = vertSize * 10;
        info->state.vportExtX = horzRes;
        info->state.vportExtY = -vertRes;
        break;
    case 133:
        info->state.wndExtX = horzSize * 100;
        info->state.wndExtY = vertSize * 100;
        info->state.vportExtX = horzRes;
        info->state.vportExtY = -vertRes;
        break;
    case 131:
        info->state.wndExtX = MulDiv(1000, horzSize, 254);
        info->state.wndExtY = MulDiv(1000, vertSize, 254);
        info->state.vportExtX = horzRes;
        info->state.vportExtY = -vertRes;
        break;
    case 134:
        info->state.wndExtX = MulDiv(10000, horzSize, 254);
        info->state.wndExtY = MulDiv(10000, vertSize, 254);
        info->state.vportExtX = horzRes;
        info->state.vportExtY = -vertRes;
        break;
    case 128:
        info->state.wndExtX = MulDiv(14400, horzSize, 254);
        info->state.wndExtY = MulDiv(14400, vertSize, 254);
        info->state.vportExtX = horzRes;
        info->state.vportExtY = -vertRes;
        break;
    case 135:
        break;
    default:
        return;
    }
}
