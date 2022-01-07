
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HTREEITEM ;


 int AddItem (char) ;
 int * hChild ;
 int * hRoot ;

__attribute__((used)) static void IdentifyItem(HTREEITEM hItem)
{
    if (hItem == hRoot) {
        AddItem('R');
        return;
    }
    if (hItem == hChild) {
        AddItem('C');
        return;
    }
    if (hItem == ((void*)0)) {
        AddItem('n');
        return;
    }
    AddItem('?');
}
