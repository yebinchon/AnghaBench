
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int HANDLE ;


 int DeactivateActCtx (int ,int ) ;
 int DeleteFileA (int ) ;
 int ReleaseActCtx (int ) ;
 int manifest_name ;

__attribute__((used)) static inline void unload_v6_module(ULONG_PTR cookie, HANDLE hCtx)
{
    DeactivateActCtx(0, cookie);
    ReleaseActCtx(hCtx);

    DeleteFileA(manifest_name);
}
