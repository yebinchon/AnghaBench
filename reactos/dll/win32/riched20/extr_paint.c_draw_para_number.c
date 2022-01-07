
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_21__ {int x; int y; } ;
struct TYPE_23__ {int style; TYPE_6__* text; TYPE_5__ pt; } ;
struct TYPE_20__ {int y; } ;
struct TYPE_18__ {scalar_t__ wNumbering; } ;
struct TYPE_24__ {TYPE_7__ para_num; TYPE_4__ pt; TYPE_2__ fmt; } ;
struct TYPE_17__ {TYPE_8__ para; } ;
struct TYPE_25__ {TYPE_1__ member; } ;
struct TYPE_22__ {int nLen; int szData; } ;
struct TYPE_19__ {int x; int y; } ;
struct TYPE_16__ {int hDC; TYPE_3__ pt; } ;
typedef TYPE_8__ ME_Paragraph ;
typedef TYPE_9__ ME_DisplayItem ;
typedef TYPE_10__ ME_Context ;
typedef int HFONT ;
typedef int COLORREF ;


 int ExtTextOutW (int ,int,int,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int ME_SelectStyleFont (TYPE_10__*,int ) ;
 int ME_UnselectStyleFont (TYPE_10__*,int ,int ) ;
 int SetTextColor (int ,int ) ;
 int get_text_color (TYPE_10__*,int ,int ) ;

__attribute__((used)) static void draw_para_number( ME_Context *c, ME_DisplayItem *p )
{
    ME_Paragraph *para = &p->member.para;
    HFONT old_font;
    int x, y;
    COLORREF old_text;

    if (para->fmt.wNumbering)
    {
        old_font = ME_SelectStyleFont( c, para->para_num.style );
        old_text = SetTextColor( c->hDC, get_text_color( c, para->para_num.style, FALSE ) );

        x = c->pt.x + para->para_num.pt.x;
        y = c->pt.y + para->pt.y + para->para_num.pt.y;

        ExtTextOutW( c->hDC, x, y, 0, ((void*)0), para->para_num.text->szData, para->para_num.text->nLen, ((void*)0) );

        SetTextColor( c->hDC, old_text );
        ME_UnselectStyleFont( c, para->para_num.style, old_font );
    }
}
