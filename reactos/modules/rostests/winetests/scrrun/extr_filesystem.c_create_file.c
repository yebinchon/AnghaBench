
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CREATE_NEW ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int const*,int ,int ,int *,int ,int ,int *) ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;

__attribute__((used)) static inline BOOL create_file(const WCHAR *name)
{
    HANDLE f = CreateFileW(name, GENERIC_WRITE, 0, ((void*)0), CREATE_NEW, 0, ((void*)0));
    CloseHandle(f);
    return f != INVALID_HANDLE_VALUE;
}
