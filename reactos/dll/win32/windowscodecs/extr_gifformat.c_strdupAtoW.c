
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;

__attribute__((used)) static LPWSTR strdupAtoW(const char *src)
{
    int len = MultiByteToWideChar(CP_ACP, 0, src, -1, ((void*)0), 0);
    LPWSTR dst = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
    if (dst) MultiByteToWideChar(CP_ACP, 0, src, -1, dst, len);
    return dst;
}
