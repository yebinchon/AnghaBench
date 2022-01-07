
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nLength; int * lpSecurityDescriptor; void* bInheritHandle; } ;
typedef int SECURITY_DESCRIPTOR ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef int * PSID ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef void* BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileU (char*,int ,int ,TYPE_1__*,int ,int ,int *) ;
 void* FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetFileSize (scalar_t__,int *) ;
 int * GetSID () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ InitializeSecurityDescriptor (int *,int ) ;
 int MSG_215 ;
 int MSG_216 ;
 int OPEN_EXISTING ;
 int PrintInfoDebug (int ,int ,char*) ;
 void* ReadFile (scalar_t__,char*,int ,int *,int *) ;
 int SECURITY_DESCRIPTOR_REVISION ;
 scalar_t__ SetSecurityDescriptorOwner (int *,int *,void*) ;
 void* TRUE ;
 int WindowsErrorString () ;
 void* WriteFile (scalar_t__,char*,int ,int *,int *) ;
 scalar_t__ malloc (int ) ;
 int safe_free (char*) ;
 int uprintf (char*,...) ;

BOOL FileIO(BOOL save, char* path, char** buffer, DWORD* size)
{
 SECURITY_ATTRIBUTES s_attr, *sa = ((void*)0);
 SECURITY_DESCRIPTOR s_desc;
 PSID sid = ((void*)0);
 HANDLE handle;
 BOOL r;
 BOOL ret = FALSE;


 sid = GetSID();
 if ( (sid != ((void*)0))
   && InitializeSecurityDescriptor(&s_desc, SECURITY_DESCRIPTOR_REVISION)
   && SetSecurityDescriptorOwner(&s_desc, sid, FALSE) ) {
  s_attr.nLength = sizeof(SECURITY_ATTRIBUTES);
  s_attr.bInheritHandle = FALSE;
  s_attr.lpSecurityDescriptor = &s_desc;
  sa = &s_attr;
 } else {
  uprintf("Could not set security descriptor: %s\n", WindowsErrorString());
 }

 if (!save) {
  *buffer = ((void*)0);
 }
 handle = CreateFileU(path, save?GENERIC_WRITE:GENERIC_READ, FILE_SHARE_READ,
  sa, save?CREATE_ALWAYS:OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));

 if (handle == INVALID_HANDLE_VALUE) {
  uprintf("Could not %s file '%s'\n", save?"create":"open", path);
  goto out;
 }

 if (save) {
  r = WriteFile(handle, *buffer, *size, size, ((void*)0));
 } else {
  *size = GetFileSize(handle, ((void*)0));
  *buffer = (char*)malloc(*size);
  if (*buffer == ((void*)0)) {
   uprintf("Could not allocate buffer for reading file\n");
   goto out;
  }
  r = ReadFile(handle, *buffer, *size, size, ((void*)0));
 }

 if (!r) {
  uprintf("I/O Error: %s\n", WindowsErrorString());
  goto out;
 }

 PrintInfoDebug(0, save?MSG_216:MSG_215, path);
 ret = TRUE;

out:
 CloseHandle(handle);
 if (!ret) {

  *size = 0;
  if (!save) {
   safe_free(*buffer);
  }
 }
 return ret;
}
