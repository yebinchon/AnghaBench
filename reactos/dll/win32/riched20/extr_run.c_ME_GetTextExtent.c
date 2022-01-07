
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ hDC; } ;
struct TYPE_8__ {scalar_t__ cy; scalar_t__ cx; } ;
typedef TYPE_1__ SIZE ;
typedef int ME_Style ;
typedef TYPE_2__ ME_Context ;
typedef int LPCWSTR ;
typedef int HGDIOBJ ;


 int GetTextExtentPoint32W (scalar_t__,int ,int,TYPE_1__*) ;
 int ME_SelectStyleFont (TYPE_2__*,int *) ;
 int ME_UnselectStyleFont (TYPE_2__*,int *,int ) ;

__attribute__((used)) static void ME_GetTextExtent(ME_Context *c, LPCWSTR szText, int nChars, ME_Style *s, SIZE *size)
{
  HGDIOBJ hOldFont;
  if (c->hDC) {
    hOldFont = ME_SelectStyleFont(c, s);
    GetTextExtentPoint32W(c->hDC, szText, nChars, size);
    ME_UnselectStyleFont(c, s, hOldFont);
  } else {
    size->cx = 0;
    size->cy = 0;
  }
}
