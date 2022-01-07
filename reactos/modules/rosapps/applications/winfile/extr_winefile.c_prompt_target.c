
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_7__ {int hInstance; } ;
struct TYPE_6__ {struct TYPE_6__* up; } ;
struct TYPE_5__ {TYPE_3__* cur; int hwnd; } ;
typedef TYPE_1__ Pane ;
typedef char* LPWSTR ;
typedef int LPARAM ;
typedef int BOOL ;


 int DestinationDlgProc ;
 scalar_t__ DialogBoxParamW (int ,int ,int ,int ,int ) ;
 int FALSE ;
 TYPE_4__ Globals ;
 int IDD_SELECT_DESTINATION ;
 scalar_t__ IDOK ;
 int MAKEINTRESOURCEW (int ) ;
 int MAX_PATH ;
 int TRUE ;
 int _MAX_EXT ;
 int _MAX_FNAME ;
 int _wsplitpath (char*,int *,int *,char*,char*) ;
 int get_path (TYPE_3__*,char*) ;
 scalar_t__ is_directory (char*) ;
 int lstrcpyW (char*,char*) ;
 int lstrlenW (char*) ;
 int wsprintfW (char*,char const*,char*,char*,char*) ;

__attribute__((used)) static BOOL prompt_target(Pane* pane, LPWSTR source, LPWSTR target)
{
 WCHAR path[MAX_PATH];
 int len;

 get_path(pane->cur, path);

 if (DialogBoxParamW(Globals.hInstance, MAKEINTRESOURCEW(IDD_SELECT_DESTINATION), pane->hwnd, DestinationDlgProc, (LPARAM)path) != IDOK)
  return FALSE;

 get_path(pane->cur, source);


 if (path[0]!='/' && path[1]!=':') {
  get_path(pane->cur->up, target);
  len = lstrlenW(target);

  if (target[len-1]!='\\' && target[len-1]!='/')
   target[len++] = '/';

  lstrcpyW(target+len, path);
 } else
  lstrcpyW(target, path);


 if (is_directory(path)) {
  WCHAR fname[_MAX_FNAME], ext[_MAX_EXT];
  static const WCHAR sAppend[] = {'%','s','/','%','s','%','s','\0'};

  _wsplitpath(source, ((void*)0), ((void*)0), fname, ext);

  wsprintfW(target, sAppend, path, fname, ext);
 }

 return TRUE;
}
