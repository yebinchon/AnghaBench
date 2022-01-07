
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lfHeight; } ;
struct TYPE_5__ {int itemHeight; } ;
typedef TYPE_1__* LPMEASUREITEMSTRUCT ;
typedef TYPE_2__ LOGFONT ;
typedef int HFONT ;


 int GetObject (int ,int,TYPE_2__*) ;
 int GetStockObject (int ) ;
 int SYSTEM_FONT ;

void OnMeasureItem(LPMEASUREITEMSTRUCT lpMeasureItemStruct)
{
    HFONT hFont;
 LOGFONT lf;

    hFont = GetStockObject(SYSTEM_FONT);
    GetObject(hFont, sizeof(LOGFONT), &lf);
 if (lf.lfHeight < 0)
  lpMeasureItemStruct->itemHeight = -lf.lfHeight;
 else
  lpMeasureItemStruct->itemHeight = lf.lfHeight;
}
