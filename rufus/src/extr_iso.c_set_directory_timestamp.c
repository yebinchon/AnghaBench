
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPFILETIME ;
typedef scalar_t__ HANDLE ;


 scalar_t__ CreateFileU (char*,int,int ,int *,int ,int ,int *) ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int SetFileTime (scalar_t__,int ,int ,int ) ;
 int WindowsErrorString () ;
 int safe_closehandle (scalar_t__) ;
 int uprintf (char*,char*,int ) ;

__attribute__((used)) static void __inline set_directory_timestamp(char* path, LPFILETIME creation, LPFILETIME last_access, LPFILETIME modify)
{
 HANDLE dir_handle = CreateFileU(path, GENERIC_READ | GENERIC_WRITE,
  FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, FILE_FLAG_BACKUP_SEMANTICS, ((void*)0));
 if ((dir_handle == INVALID_HANDLE_VALUE) || (!SetFileTime(dir_handle, creation, last_access, modify)))
  uprintf("  Could not set timestamp for directory '%s': %s", path, WindowsErrorString());
 safe_closehandle(dir_handle);
}
