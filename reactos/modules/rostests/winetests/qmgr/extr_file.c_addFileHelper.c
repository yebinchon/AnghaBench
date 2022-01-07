
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IBackgroundCopyJob ;
typedef int HRESULT ;
typedef int DWORD ;


 int GetCurrentDirectoryW (int ,int ) ;
 int IBackgroundCopyJob_AddFile (int *,int ,int ) ;
 int MAX_PATH ;
 int PathAppendW (int ,int const*) ;
 int URL_UNESCAPE_INPLACE ;
 int UrlCreateFromPathW (int ,int ,int *,int ) ;
 int UrlUnescapeW (int ,int *,int *,int ) ;
 int test_localFile ;
 int test_remoteUrl ;

__attribute__((used)) static HRESULT addFileHelper(IBackgroundCopyJob* job,
        const WCHAR *localName, const WCHAR *remoteName)
{
    DWORD urlSize;

    GetCurrentDirectoryW(MAX_PATH, test_localFile);
    PathAppendW(test_localFile, localName);
    GetCurrentDirectoryW(MAX_PATH, test_remoteUrl);
    PathAppendW(test_remoteUrl, remoteName);
    urlSize = MAX_PATH;
    UrlCreateFromPathW(test_remoteUrl, test_remoteUrl, &urlSize, 0);
    UrlUnescapeW(test_remoteUrl, ((void*)0), &urlSize, URL_UNESCAPE_INPLACE);

    return IBackgroundCopyJob_AddFile(job, test_remoteUrl, test_localFile);
}
