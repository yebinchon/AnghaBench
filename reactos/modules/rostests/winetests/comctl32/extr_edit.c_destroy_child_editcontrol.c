
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;


 int DestroyWindow (scalar_t__) ;
 scalar_t__ GetParent (scalar_t__) ;
 int trace (char*) ;

__attribute__((used)) static void destroy_child_editcontrol (HWND hwndEdit)
{
    if (GetParent(hwndEdit))
        DestroyWindow(GetParent(hwndEdit));
    else {
        trace("Edit control has no parent!\n");
        DestroyWindow(hwndEdit);
    }
}
