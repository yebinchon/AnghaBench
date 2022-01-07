
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct menu_data {int type; int id; int str; } ;
typedef int mii ;
typedef int buf ;
typedef int UINT ;
struct TYPE_4__ {int cbSize; char* dwTypeData; int cch; int fMask; int fType; int wID; int hbmpItem; int fState; } ;
typedef TYPE_1__ MENUITEMINFOA ;
typedef int LPCSTR ;
typedef size_t INT ;
typedef int HMENU ;
typedef int BOOL ;


 size_t GetMenuItemCount (int ) ;
 int GetMenuItemInfoA (int ,size_t,int ,TYPE_1__*) ;
 scalar_t__ LOWORD (int) ;
 int MIIM_BITMAP ;
 int MIIM_FTYPE ;
 int MIIM_ID ;
 int MIIM_STRING ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,size_t,...) ;
 int strcmp (char*,int) ;
 int strlen (int) ;
 int trace (char*,size_t,int,int ,int,int) ;
 int winetest_debug ;

__attribute__((used)) static void compare_menu_data(HMENU hmenu, const struct menu_data *item, INT item_count)
{
    INT count, i;
    BOOL ret;

    count = GetMenuItemCount(hmenu);
    ok(count == item_count, "expected %d, got %d menu items\n", count, item_count);

    for (i = 0; i < count; i++)
    {
        char buf[20];
        MENUITEMINFOA mii;

        memset(&mii, 0, sizeof(mii));
        mii.cbSize = sizeof(mii);
        mii.dwTypeData = buf;
        mii.cch = sizeof(buf);
        mii.fMask = MIIM_FTYPE | MIIM_ID | MIIM_STRING | MIIM_BITMAP;
        ret = GetMenuItemInfoA(hmenu, i, TRUE, &mii);
        ok(ret, "GetMenuItemInfo(%u) failed\n", i);

        if (winetest_debug > 1)
            trace("item #%u: fType %04x, fState %04x, wID %04x, hbmp %p\n",
                  i, mii.fType, mii.fState, mii.wID, mii.hbmpItem);

        ok(mii.fType == item[i].type,
           "%u: expected fType %04x, got %04x\n", i, item[i].type, mii.fType);
        ok(mii.wID == item[i].id,
           "%u: expected wID %04x, got %04x\n", i, item[i].id, mii.wID);
        if (mii.hbmpItem || !item[i].str)



            ok(LOWORD(mii.hbmpItem) == LOWORD(item[i].str),
               "%u: expected hbmpItem %p, got %p\n", i, item[i].str, mii.hbmpItem);
        else
        {
            ok(mii.cch == strlen(item[i].str),
               "%u: expected cch %u, got %u\n", i, (UINT)strlen(item[i].str), mii.cch);
            ok(!strcmp(mii.dwTypeData, item[i].str),
               "%u: expected dwTypeData %s, got %s\n", i, item[i].str, (LPCSTR)mii.dwTypeData);
        }
    }
}
