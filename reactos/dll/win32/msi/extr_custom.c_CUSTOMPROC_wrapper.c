
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int (* MsiCustomActionEntryPoint ) (int ) ;
typedef int MSIHANDLE ;



__attribute__((used)) static inline UINT CUSTOMPROC_wrapper( MsiCustomActionEntryPoint proc, MSIHANDLE handle )
{
    return proc(handle);
}
