
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_2__ {char const* (* xNextSystemCall ) (int *,char const*) ;} ;


 TYPE_1__* REALVFS (int *) ;
 char const* stub1 (int *,char const*) ;

__attribute__((used)) static const char *vlogNextSystemCall(sqlite3_vfs *pVfs, const char *zName)
{
    return REALVFS(pVfs)->xNextSystemCall(pVfs, zName);
}
