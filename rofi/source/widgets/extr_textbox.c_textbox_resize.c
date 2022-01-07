
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int widget ;
struct TYPE_4__ {int y; int x; } ;
struct TYPE_5__ {TYPE_1__ widget; } ;
typedef TYPE_2__ textbox ;


 int textbox_moveresize (TYPE_2__*,int ,int ,short,short) ;

__attribute__((used)) static void textbox_resize ( widget *wid, short w, short h )
{
    textbox *tb = (textbox *) wid;
    textbox_moveresize ( tb, tb->widget.x, tb->widget.y, w, h );
}
