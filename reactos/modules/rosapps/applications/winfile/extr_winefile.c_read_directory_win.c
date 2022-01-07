
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WIN32_FIND_DATAW ;
typedef char WCHAR ;
struct TYPE_6__ {int cFileName; } ;
struct TYPE_5__ {int level; void* scanned; struct TYPE_5__* down; struct TYPE_5__* next; void* bhfi_valid; int bhfi; TYPE_3__ data; int etype; void* expanded; struct TYPE_5__* up; } ;
typedef scalar_t__* LPCWSTR ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ Entry ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (char*,int ,int,int ,int ,int ,int ) ;
 int ET_WINDOWS ;
 void* FALSE ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (char*,int *) ;
 scalar_t__ FindNextFileW (scalar_t__,int *) ;
 int GENERIC_READ ;
 scalar_t__ GetFileInformationByHandle (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 void* TRUE ;
 TYPE_1__* alloc_entry () ;
 int lstrcpyW (char*,int ) ;
 int memcpy (TYPE_3__*,int *,int) ;

__attribute__((used)) static void read_directory_win(Entry* dir, LPCWSTR path)
{
 Entry* first_entry = ((void*)0);
 Entry* last = ((void*)0);
 Entry* entry;

 int level = dir->level + 1;
 WIN32_FIND_DATAW w32fd;
 HANDLE hFind;
 HANDLE hFile;

 WCHAR buffer[MAX_PATH], *p;
 for(p=buffer; *path; )
  *p++ = *path++;

 *p++ = '\\';
 p[0] = '*';
 p[1] = '\0';

 hFind = FindFirstFileW(buffer, &w32fd);

 if (hFind != INVALID_HANDLE_VALUE) {
  do {
   entry = alloc_entry();

   if (!first_entry)
    first_entry = entry;

   if (last)
    last->next = entry;

   memcpy(&entry->data, &w32fd, sizeof(WIN32_FIND_DATAW));
   entry->down = ((void*)0);
   entry->up = dir;
   entry->expanded = FALSE;
   entry->scanned = FALSE;
   entry->level = level;
   entry->etype = ET_WINDOWS;
   entry->bhfi_valid = FALSE;

   lstrcpyW(p, entry->data.cFileName);

   hFile = CreateFileW(buffer, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_SHARE_DELETE,
        0, OPEN_EXISTING, FILE_FLAG_BACKUP_SEMANTICS, 0);

   if (hFile != INVALID_HANDLE_VALUE) {
    if (GetFileInformationByHandle(hFile, &entry->bhfi))
     entry->bhfi_valid = TRUE;

    CloseHandle(hFile);
   }

   last = entry;
  } while(FindNextFileW(hFind, &w32fd));

  if (last)
   last->next = ((void*)0);

  FindClose(hFind);
 }

 dir->down = first_entry;
 dir->scanned = TRUE;
}
