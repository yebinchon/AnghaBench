
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int * HWND ;


 int DestroyWindow (int *) ;
 int FALSE ;
 int NUM_MSG_SEQUENCES ;
 int PARENT_SEQ_INDEX ;
 int SendMessageA (int *,int ,int ,int ) ;
 int TAB_SEQ_INDEX ;
 int TCIF_IMAGE ;
 int TCIF_TEXT ;
 int TCM_GETROWCOUNT ;
 int TCS_FIXEDWIDTH ;
 int * createFilledTabControl (int ,int ,int,int const) ;
 int empty_sequence ;
 int flush_sequences (int ,int ) ;
 int get_row_count_seq ;
 int ok (int,char*,...) ;
 int ok_sequence (int ,int ,int ,char*,int ) ;
 int parent_wnd ;
 int sequences ;

__attribute__((used)) static void test_TCM_GETROWCOUNT(void)
{
    const INT nTabs = 5;
    HWND hTab;
    INT count;

    flush_sequences(sequences, NUM_MSG_SEQUENCES);

    hTab = createFilledTabControl(parent_wnd, TCS_FIXEDWIDTH, TCIF_TEXT|TCIF_IMAGE, nTabs);
    ok(hTab != ((void*)0), "Failed to create tab control\n");

    flush_sequences(sequences, NUM_MSG_SEQUENCES);

    count = SendMessageA(hTab, TCM_GETROWCOUNT, 0, 0);
    ok(count == 1, "Unexpected row count %d.\n", count);

    ok_sequence(sequences, TAB_SEQ_INDEX, get_row_count_seq, "Get rowCount test sequence", FALSE);
    ok_sequence(sequences, PARENT_SEQ_INDEX, empty_sequence, "Get rowCount test parent sequence", FALSE);

    DestroyWindow(hTab);
}
