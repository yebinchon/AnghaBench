
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_11__ {scalar_t__ prescan_node; } ;
struct TYPE_9__ {int dwFileAttributes; int cFileName; } ;
struct TYPE_10__ {scalar_t__ etype; TYPE_1__ data; struct TYPE_10__* next; struct TYPE_10__* down; } ;
typedef int SORT_ORDER ;
typedef scalar_t__* PWSTR ;
typedef scalar_t__* LPCWSTR ;
typedef int HWND ;
typedef TYPE_2__ Entry ;


 scalar_t__ ET_SHELL ;
 scalar_t__ ET_UNIX ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 TYPE_8__ Globals ;
 int MAX_PATH ;
 int SortDirectory (TYPE_2__*,int ) ;
 int lstrcpyW (scalar_t__*,int ) ;
 int read_directory_shell (TYPE_2__*,int ) ;
 int read_directory_unix (TYPE_2__*,scalar_t__*) ;
 int read_directory_win (TYPE_2__*,scalar_t__*) ;

__attribute__((used)) static void read_directory(Entry* dir, LPCWSTR path, SORT_ORDER sortOrder, HWND hwnd)
{
 WCHAR buffer[MAX_PATH];
 Entry* entry;
 LPCWSTR s;
 PWSTR d;

 if (dir->etype == ET_SHELL)
 {
  read_directory_shell(dir, hwnd);

  if (Globals.prescan_node) {
   s = path;
   d = buffer;

   while(*s)
    *d++ = *s++;

   *d++ = '\\';

   for(entry=dir->down; entry; entry=entry->next)
    if (entry->data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
     read_directory_shell(entry, hwnd);
     SortDirectory(entry, sortOrder);
    }
  }
 }
 else
 {
  read_directory_win(dir, path);

  if (Globals.prescan_node) {
   s = path;
   d = buffer;

   while(*s)
    *d++ = *s++;

   *d++ = '\\';

   for(entry=dir->down; entry; entry=entry->next)
    if (entry->data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
     lstrcpyW(d, entry->data.cFileName);
     read_directory_win(entry, buffer);
     SortDirectory(entry, sortOrder);
    }
  }
 }

 SortDirectory(dir, sortOrder);
}
