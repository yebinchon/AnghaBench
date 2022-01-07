
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int*,int) ;
 scalar_t__ create_manifest_file (char const*,char*,int,int *,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static BOOL create_wide_manifest(const char *filename, const char *manifest, BOOL fBOM, BOOL fReverse)
{
    WCHAR *wmanifest = HeapAlloc(GetProcessHeap(), 0, (strlen(manifest)+2) * sizeof(WCHAR));
    BOOL ret;
    int offset = (fBOM ? 0 : 1);

    MultiByteToWideChar(CP_ACP, 0, manifest, -1, &wmanifest[1], (strlen(manifest)+1));
    wmanifest[0] = 0xfeff;
    if (fReverse)
    {
        size_t i;
        for (i = 0; i < strlen(manifest)+1; i++)
            wmanifest[i] = (wmanifest[i] << 8) | ((wmanifest[i] >> 8) & 0xff);
    }
    ret = create_manifest_file(filename, (char *)&wmanifest[offset], (strlen(manifest)+1-offset) * sizeof(WCHAR), ((void*)0), ((void*)0));
    HeapFree(GetProcessHeap(), 0, wmanifest);
    return ret;
}
