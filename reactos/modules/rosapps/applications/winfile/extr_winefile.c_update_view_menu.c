
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hMenuView; } ;
struct TYPE_4__ {scalar_t__ sortOrder; } ;
typedef TYPE_1__ ChildWnd ;


 int CheckMenuItem (int ,int ,int ) ;
 TYPE_3__ Globals ;
 int ID_VIEW_SORT_DATE ;
 int ID_VIEW_SORT_NAME ;
 int ID_VIEW_SORT_SIZE ;
 int ID_VIEW_SORT_TYPE ;
 int MF_CHECKED ;
 int MF_UNCHECKED ;
 scalar_t__ SORT_DATE ;
 scalar_t__ SORT_EXT ;
 scalar_t__ SORT_NAME ;
 scalar_t__ SORT_SIZE ;

__attribute__((used)) static void update_view_menu(ChildWnd* child)
{
 CheckMenuItem(Globals.hMenuView, ID_VIEW_SORT_NAME, child->sortOrder==SORT_NAME? MF_CHECKED: MF_UNCHECKED);
 CheckMenuItem(Globals.hMenuView, ID_VIEW_SORT_TYPE, child->sortOrder==SORT_EXT? MF_CHECKED: MF_UNCHECKED);
 CheckMenuItem(Globals.hMenuView, ID_VIEW_SORT_SIZE, child->sortOrder==SORT_SIZE? MF_CHECKED: MF_UNCHECKED);
 CheckMenuItem(Globals.hMenuView, ID_VIEW_SORT_DATE, child->sortOrder==SORT_DATE? MF_CHECKED: MF_UNCHECKED);
}
