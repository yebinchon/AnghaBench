
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
typedef int sqlite3_int64 ;
struct TYPE_4__ {TYPE_1__* pOrigVfs; } ;
struct TYPE_3__ {int (* xCurrentTimeInt64 ) (TYPE_1__*,int *) ;} ;


 TYPE_2__ gMultiplex ;
 int stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static int multiplexCurrentTimeInt64(sqlite3_vfs *a, sqlite3_int64 *b){
  return gMultiplex.pOrigVfs->xCurrentTimeInt64(gMultiplex.pOrigVfs, b);
}
