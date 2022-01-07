
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {int (* xGetLastError ) (TYPE_1__*,int,char*) ;} ;


 TYPE_1__* REALVFS (int *) ;
 int stub1 (TYPE_1__*,int,char*) ;

__attribute__((used)) static int vlogGetLastError(sqlite3_vfs *pVfs, int a, char *b)
{
    return REALVFS(pVfs)->xGetLastError(REALVFS(pVfs), a, b);
}
