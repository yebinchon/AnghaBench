
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IBackgroundCopyJob ;
typedef int HRESULT ;
typedef int DWORD ;


 int GetCurrentDirectoryW (int,int *) ;
 int IBackgroundCopyJob_AddFile (int *,int *,int *) ;
 int MAX_PATH ;
 int PathAppendW (int *,int const*) ;
 int URL_UNESCAPE_INPLACE ;
 int UrlCreateFromPathW (int *,int *,int*,int ) ;
 int UrlUnescapeW (int *,int *,int*,int ) ;

__attribute__((used)) static HRESULT addFileHelper(IBackgroundCopyJob* job,
                             const WCHAR *localName, const WCHAR *remoteName)
{
    DWORD urlSize;
    WCHAR localFile[MAX_PATH];
    WCHAR remoteUrl[MAX_PATH];
    WCHAR remoteFile[MAX_PATH];

    GetCurrentDirectoryW(MAX_PATH, localFile);
    PathAppendW(localFile, localName);
    GetCurrentDirectoryW(MAX_PATH, remoteFile);
    PathAppendW(remoteFile, remoteName);
    urlSize = MAX_PATH;
    UrlCreateFromPathW(remoteFile, remoteUrl, &urlSize, 0);
    UrlUnescapeW(remoteUrl, ((void*)0), &urlSize, URL_UNESCAPE_INPLACE);
    return IBackgroundCopyJob_AddFile(job, remoteUrl, localFile);
}
