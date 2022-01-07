
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int byte ;
struct TYPE_6__ {TYPE_1__* lpVtbl; } ;
struct TYPE_5__ {scalar_t__ (* Read ) (TYPE_2__*,int *,int,int *) ;} ;
typedef int TCHAR ;
typedef TYPE_2__ IStream ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int BLOCK_SIZE ;
 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int *,int,int,int *,int ,int ,int *) ;
 int DeleteFile (int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FILE_ATTRIBUTE_TEMPORARY ;
 int FILE_READ_DATA ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_WRITE_DATA ;
 int GetLastError () ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int WriteFile (scalar_t__,int *,int ,int *,int *) ;
 scalar_t__ stub1 (TYPE_2__*,int *,int,int *) ;

__attribute__((used)) static HRESULT StreamToFile(IStream *stream, TCHAR *szFile)
{
    byte buffer[BLOCK_SIZE];
    DWORD bytes_read;
    DWORD bytes_written;
    HRESULT hr;
 HANDLE hFile;

    hFile = CreateFile( szFile,
          FILE_READ_DATA | FILE_WRITE_DATA,
          FILE_SHARE_READ | FILE_SHARE_WRITE,
          ((void*)0),
          CREATE_ALWAYS,
          FILE_ATTRIBUTE_TEMPORARY,
          ((void*)0) );

    if (hFile != INVALID_HANDLE_VALUE) {
        do {
            hr = stream->lpVtbl->Read(stream, buffer, BLOCK_SIZE, &bytes_read);
   bytes_written = 0;
            if (SUCCEEDED(hr) && bytes_read)
   {
    if (!WriteFile(hFile, buffer, bytes_read, &bytes_written, ((void*)0)))
    {
     hr = HRESULT_FROM_WIN32(GetLastError());
     bytes_written = 0;
    }
   }
        } while (S_OK == hr && bytes_written != 0);
        CloseHandle(hFile);
  if (FAILED(hr))
   DeleteFile(szFile);
  else
   hr = S_OK;
    }
    else
     hr = HRESULT_FROM_WIN32(GetLastError());

    return hr;
}
