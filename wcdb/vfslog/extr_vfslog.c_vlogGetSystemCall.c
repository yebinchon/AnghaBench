
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vfs ;
typedef int sqlite3_syscall_ptr ;
struct TYPE_2__ {int (* xGetSystemCall ) (int *,char const*) ;} ;


 TYPE_1__* REALVFS (int *) ;
 int stub1 (int *,char const*) ;

__attribute__((used)) static sqlite3_syscall_ptr vlogGetSystemCall(sqlite3_vfs *pVfs,
                                             const char *zName)
{
    return REALVFS(pVfs)->xGetSystemCall(pVfs, zName);
}
