
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 scalar_t__ SHAlloc (int) ;
 int lstrcpyW (int *,int const*) ;
 int lstrlenW (int const*) ;

__attribute__((used)) static __inline void __SHCloneStrW(WCHAR **target, const WCHAR *source)
{
 *target = (WCHAR *)SHAlloc((lstrlenW(source) + 1) * sizeof(WCHAR) );
 lstrcpyW(*target, source);
}
