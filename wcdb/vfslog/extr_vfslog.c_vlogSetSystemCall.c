
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vfs ;
typedef int sqlite3_syscall_ptr ;
struct TYPE_2__ {int (* xSetSystemCall ) (int *,char const*,int ) ;} ;


 TYPE_1__* REALVFS (int *) ;
 int stub1 (int *,char const*,int ) ;

__attribute__((used)) static int vlogSetSystemCall(sqlite3_vfs *pVfs,
                             const char *zName,
                             sqlite3_syscall_ptr pSyscall)
{
    return REALVFS(pVfs)->xSetSystemCall(pVfs, zName, pSyscall);
}
