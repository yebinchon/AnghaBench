
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float WCHAR ;
typedef int IFileDialog ;
typedef int * HWND ;


 int CB_SETCURSEL ;
 int CB_SHOWDROPDOWN ;
 int SendMessageW (int *,int ,int,int) ;
 int WM_LBUTTONDOWN ;
 int WM_LBUTTONUP ;
 int broken (int ) ;
 int * find_window (int *,int *,float const*) ;
 int ok (int,char*) ;
 int trace (char*) ;

__attribute__((used)) static void filedialog_change_filetype(IFileDialog *pfd, HWND dlg_hwnd)
{
    HWND cb_filetype;
    const WCHAR filetype1[] = {'f','n','a','m','e','1',0};
    const WCHAR filetype1_broken[] = {'f','n','a','m','e','1',' ', '(','*','.','t','x','t',')',0};

    cb_filetype = find_window(dlg_hwnd, ((void*)0), filetype1);
    ok(cb_filetype != ((void*)0) || broken(cb_filetype == ((void*)0)), "Could not find combobox on first attempt\n");

    if(!cb_filetype)
    {


        trace("Didn't find combobox on first attempt, trying broken string..\n");
        cb_filetype = find_window(dlg_hwnd, ((void*)0), filetype1_broken);
        ok(broken(cb_filetype != ((void*)0)), "Failed to find combobox on second attempt\n");
        if(!cb_filetype)
            return;
    }


    SendMessageW( cb_filetype, CB_SHOWDROPDOWN, 1, 0 );
    SendMessageW( cb_filetype, CB_SETCURSEL, 1, 0 );
    SendMessageW( cb_filetype, WM_LBUTTONDOWN, 0, -1 );
    SendMessageW( cb_filetype, WM_LBUTTONUP, 0, -1 );
}
