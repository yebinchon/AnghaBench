
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbSize; int lfMenuFont; } ;
typedef TYPE_1__ NONCLIENTMETRICS ;
typedef int LOGFONT ;


 int FAIL ;
 int OK ;
 int SPI_GETNONCLIENTMETRICS ;
 int SystemParametersInfo (int ,int,TYPE_1__*,int ) ;

__attribute__((used)) static int
gui_w32_get_menu_font(LOGFONT *lf)
{
    NONCLIENTMETRICS nm;

    nm.cbSize = sizeof(NONCLIENTMETRICS);
    if (!SystemParametersInfo(
     SPI_GETNONCLIENTMETRICS,
     sizeof(NONCLIENTMETRICS),
     &nm,
     0))
 return FAIL;
    *lf = nm.lfMenuFont;
    return OK;
}
