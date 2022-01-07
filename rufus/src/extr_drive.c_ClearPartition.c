
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int LARGE_INTEGER ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FILE_BEGIN ;
 int SetFilePointerEx (int ,int ,int *,int ) ;
 int WRITE_RETRIES ;
 int WriteFileWithRetry (int ,int *,int ,int *,int ) ;
 int * calloc (int ,int) ;
 int free (int *) ;

__attribute__((used)) static BOOL ClearPartition(HANDLE hDrive, LARGE_INTEGER offset, DWORD size)
{
 BOOL r = FALSE;
 uint8_t* buffer = calloc(size, 1);

 if (buffer == ((void*)0))
  return FALSE;

 if (!SetFilePointerEx(hDrive, offset, ((void*)0), FILE_BEGIN)) {
  free(buffer);
  return FALSE;
 }

 r = WriteFileWithRetry(hDrive, buffer, size, &size, WRITE_RETRIES);
 free(buffer);
 return r;
}
