
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_9__ {int expanded; scalar_t__ down; int etype; } ;
struct TYPE_8__ {TYPE_2__ entry; } ;
typedef int SORT_ORDER ;
typedef TYPE_1__ Root ;
typedef char* PWSTR ;
typedef char* LPCWSTR ;
typedef int HWND ;
typedef int HCURSOR ;
typedef TYPE_2__ Entry ;


 int ET_WINDOWS ;
 scalar_t__ IDC_WAIT ;
 int LoadCursorW (int ,char*) ;
 int MAX_PATH ;
 int SetCursor (int ) ;
 int TRUE ;
 TYPE_2__* find_entry_win (TYPE_2__*,char*) ;
 int read_directory (TYPE_2__*,char*,int ,int ) ;

__attribute__((used)) static Entry* read_tree_win(Root* root, LPCWSTR path, SORT_ORDER sortOrder, HWND hwnd)
{
 WCHAR buffer[MAX_PATH];
 Entry* entry = &root->entry;
 LPCWSTR s = path;
 PWSTR d = buffer;

 HCURSOR old_cursor = SetCursor(LoadCursorW(0, (LPCWSTR)IDC_WAIT));

 entry->etype = ET_WINDOWS;
 while(entry) {
  while(*s && *s != '\\' && *s != '/')
   *d++ = *s++;

  while(*s == '\\' || *s == '/')
   s++;

  *d++ = '\\';
  *d = '\0';

  read_directory(entry, buffer, sortOrder, hwnd);

  if (entry->down)
   entry->expanded = TRUE;

  if (!*s)
   break;

  entry = find_entry_win(entry, s);
 }

 SetCursor(old_cursor);

 return entry;
}
