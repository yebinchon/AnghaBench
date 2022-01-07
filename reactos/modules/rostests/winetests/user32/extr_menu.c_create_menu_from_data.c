
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu_data {int str; int id; int type; } ;
typedef size_t INT ;
typedef scalar_t__ HMENU ;
typedef int BOOL ;


 int AppendMenuA (scalar_t__,int ,int ,int ) ;
 scalar_t__ CreateMenu () ;
 int GetLastError () ;
 int SetLastError (int) ;
 int assert (int) ;
 int ok (int ,char*,size_t,int ,int ,int ,int ) ;

__attribute__((used)) static HMENU create_menu_from_data(const struct menu_data *item, INT item_count)
{
    HMENU hmenu;
    INT i;
    BOOL ret;

    hmenu = CreateMenu();
    assert(hmenu != 0);

    for (i = 0; i < item_count; i++)
    {
        SetLastError(0xdeadbeef);
        ret = AppendMenuA(hmenu, item[i].type, item[i].id, item[i].str);
        ok(ret, "%d: AppendMenu(%04x, %04x, %p) error %u\n",
           i, item[i].type, item[i].id, item[i].str, GetLastError());
    }
    return hmenu;
}
