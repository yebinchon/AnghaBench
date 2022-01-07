
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int item ;
struct TYPE_3__ {char* pszText; int iItem; int lParam; int mask; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_1__ COMBOBOXEXITEMA ;
typedef int BOOL ;


 int CBEIF_LPARAM ;
 int CBEIF_TEXT ;
 int CBEM_GETITEMA ;
 int CBEM_SETITEMA ;
 int CBS_DROPDOWN ;
 int DestroyWindow (int ) ;
 int EDITBOX_SEQ_INDEX ;
 int FALSE ;
 int NUM_MSG_SEQUENCES ;
 int SendMessageA (int ,int ,int ,int ) ;
 int TRUE ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int createComboEx (int) ;
 int expect (int ,int ) ;
 int flush_sequences (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,int) ;
 int ok_sequence (int ,int ,int ,char*,int ) ;
 int sequences ;
 int subclass_editbox (int ) ;
 int test_setitem_edit_seq ;

__attribute__((used)) static void test_comboex_get_set_item(void)
{
    char textA[] = "test";
    HWND hComboEx;
    COMBOBOXEXITEMA item;
    BOOL ret;

    hComboEx = createComboEx(WS_BORDER | WS_VISIBLE | WS_CHILD | CBS_DROPDOWN);

    subclass_editbox(hComboEx);

    flush_sequences(sequences, NUM_MSG_SEQUENCES);

    memset(&item, 0, sizeof(item));
    item.mask = CBEIF_TEXT;
    item.pszText = textA;
    item.iItem = -1;
    ret = SendMessageA(hComboEx, CBEM_SETITEMA, 0, (LPARAM)&item);
    expect(TRUE, ret);

    ok_sequence(sequences, EDITBOX_SEQ_INDEX, test_setitem_edit_seq, "set item data for edit", FALSE);


    item.mask = CBEIF_LPARAM;
    item.iItem = -1;
    item.lParam = 0xdeadbeef;
    ret = SendMessageA(hComboEx, CBEM_GETITEMA, 0, (LPARAM)&item);
    expect(TRUE, ret);
    ok(item.lParam == 0, "Expected zero, got %lx\n", item.lParam);

    item.lParam = 0x1abe11ed;
    ret = SendMessageA(hComboEx, CBEM_SETITEMA, 0, (LPARAM)&item);
    expect(TRUE, ret);

    item.lParam = 0;
    ret = SendMessageA(hComboEx, CBEM_GETITEMA, 0, (LPARAM)&item);
    expect(TRUE, ret);
    ok(item.lParam == 0x1abe11ed, "Expected 0x1abe11ed, got %lx\n", item.lParam);

    DestroyWindow(hComboEx);
}
