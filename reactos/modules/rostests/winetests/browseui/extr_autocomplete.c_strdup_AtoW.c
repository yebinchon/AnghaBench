
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCSTR ;


 int CP_ACP ;
 int * CoTaskMemAlloc (int) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;

__attribute__((used)) static LPWSTR strdup_AtoW(LPCSTR str)
{
    int size = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);
    LPWSTR wstr = CoTaskMemAlloc((size + 1)*sizeof(WCHAR));
    MultiByteToWideChar(CP_ACP, 0, str, -1, wstr, size+1);
    return wstr;
}
