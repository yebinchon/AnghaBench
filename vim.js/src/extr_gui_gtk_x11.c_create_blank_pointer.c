
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mainwin; } ;
struct TYPE_5__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef int GdkWindow ;
typedef int GdkPixmap ;
typedef int GdkCursor ;
typedef TYPE_1__ GdkColor ;


 int * gdk_bitmap_create_from_data (int *,char*,int,int) ;
 int gdk_bitmap_unref (int *) ;
 int * gdk_cursor_new_from_pixmap (int *,int *,TYPE_1__*,TYPE_1__*,int ,int ) ;
 int * gtk_widget_get_root_window (int ) ;
 TYPE_2__ gui ;

__attribute__((used)) static GdkCursor *
create_blank_pointer(void)
{
    GdkWindow *root_window = ((void*)0);
    GdkPixmap *blank_mask;
    GdkCursor *cursor;
    GdkColor color = { 0, 0, 0, 0 };
    char blank_data[] = { 0x0 };







    blank_mask = gdk_bitmap_create_from_data(root_window, blank_data, 1, 1);
    cursor = gdk_cursor_new_from_pixmap(blank_mask, blank_mask,
     &color, &color, 0, 0);
    gdk_bitmap_unref(blank_mask);

    return cursor;
}
