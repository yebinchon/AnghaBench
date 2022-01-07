
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {int (* xDlClose ) (TYPE_1__*,void*) ;} ;


 TYPE_1__* REALVFS (int *) ;
 int stub1 (TYPE_1__*,void*) ;

__attribute__((used)) static void vlogDlClose(sqlite3_vfs *pVfs, void *pHandle)
{
    REALVFS(pVfs)->xDlClose(REALVFS(pVfs), pHandle);
}
