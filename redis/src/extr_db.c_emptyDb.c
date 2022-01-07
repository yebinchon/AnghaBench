
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;


 long long emptyDbGeneric (int ,int,int,void (*) (void*)) ;
 TYPE_1__ server ;

long long emptyDb(int dbnum, int flags, void(callback)(void*)) {
    return emptyDbGeneric(server.db, dbnum, flags, callback);
}
