
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 scalar_t__ SHAlloc (int) ;

__attribute__((used)) static __inline LPWSTR __SHCloneStrAtoW(WCHAR **target, const char *source)
{
 int len = MultiByteToWideChar(CP_ACP, 0, source, -1, ((void*)0), 0);
 *target = (WCHAR *)SHAlloc(len * sizeof(WCHAR));
 MultiByteToWideChar(CP_ACP, 0, source, -1, *target, len);
 return *target;
}
