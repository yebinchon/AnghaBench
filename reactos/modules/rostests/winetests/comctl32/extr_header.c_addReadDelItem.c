
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mask; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_1__ HDITEMA ;


 int HDM_DELETEITEM ;
 int HDM_GETITEMA ;
 int HDM_INSERTITEMA ;
 int SendMessageA (int ,int ,int ,int ) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int ok (int,char*) ;

__attribute__((used)) static void addReadDelItem(HWND hdex, HDITEMA *phdiCreate, int maskRead, HDITEMA *phdiRead)
{
    ok(SendMessageA(hdex, HDM_INSERTITEMA, 0, (LPARAM)phdiCreate)!=-1, "Adding item failed\n");
    ZeroMemory(phdiRead, sizeof(HDITEMA));
    phdiRead->mask = maskRead;
    ok(SendMessageA(hdex, HDM_GETITEMA, 0, (LPARAM)phdiRead)!=0, "Getting item data failed\n");
    ok(SendMessageA(hdex, HDM_DELETEITEM, 0, 0)!=0, "Deleting item failed\n");
}
