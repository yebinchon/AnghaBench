
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITfDocumentMgr ;
typedef int INT ;
typedef int CHAR ;


 int * FOCUS_IGNORE ;
 int * FOCUS_SAVE ;
 int _sink_check_ok (int *,int const*) ;
 int expected_count (int *) ;
 int * test_FirstPrevFocus ;
 int * test_LastCurrentFocus ;
 int winetest_ok (int,char*,int const*,int *,int *) ;

__attribute__((used)) static inline void _sink_check_saved(INT *sink, ITfDocumentMgr *PrevFocus, ITfDocumentMgr *CurrentFocus, const CHAR* name)
{
    int count = expected_count(sink);
    _sink_check_ok(sink, name);
    if (PrevFocus != FOCUS_IGNORE && count != 0)
        winetest_ok(PrevFocus == test_FirstPrevFocus, "%s expected prev focus %p got %p\n", name, PrevFocus, test_FirstPrevFocus);
    if (CurrentFocus != FOCUS_IGNORE && count != 0)
        winetest_ok(CurrentFocus == test_LastCurrentFocus, "%s expected current focus %p got %p\n", name, CurrentFocus, test_LastCurrentFocus);
    test_FirstPrevFocus = FOCUS_SAVE;
    test_LastCurrentFocus = FOCUS_SAVE;
}
