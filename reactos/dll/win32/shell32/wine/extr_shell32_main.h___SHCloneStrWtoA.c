
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_ACP ;
 scalar_t__ SHAlloc (int) ;
 int WideCharToMultiByte (int ,int ,int const*,int,char*,int,int *,int *) ;

__attribute__((used)) static __inline void __SHCloneStrWtoA(char **target, const WCHAR *source)
{
 int len = WideCharToMultiByte(CP_ACP, 0, source, -1, ((void*)0), 0, ((void*)0), ((void*)0));
 *target = (char *)SHAlloc(len);
 WideCharToMultiByte(CP_ACP, 0, source, -1, *target, len, ((void*)0), ((void*)0));
}
