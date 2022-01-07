
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetFileVersionInfoA (char const*,int ,int ,char*) ;
 int GetFileVersionInfoSizeA (char const*,int *) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,char*) ;
 int LANG_ENGLISH ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_ENGLISH_US ;
 scalar_t__ VerQueryValueA (char*,char*,void**,int *) ;
 int lstrcmpiA (char*,char*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static BOOL is_stub_dll(const char *filename)
{
    DWORD size, ver;
    BOOL isstub = FALSE;
    char *p, *data;

    size = GetFileVersionInfoSizeA(filename, &ver);
    if (!size) return FALSE;

    data = HeapAlloc(GetProcessHeap(), 0, size);
    if (!data) return FALSE;

    if (GetFileVersionInfoA(filename, ver, size, data))
    {
        char buf[256];

        sprintf(buf, "\\StringFileInfo\\%04x%04x\\OriginalFilename", MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US), 1200);
        if (VerQueryValueA(data, buf, (void**)&p, &size))
            isstub = !lstrcmpiA("wcodstub.dll", p);
    }
    HeapFree(GetProcessHeap(), 0, data);

    return isstub;
}
