
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* db; } ;
struct TYPE_3__ {int expires; int dict; } ;


 scalar_t__ dictIsRehashing (int ) ;
 int dictRehashMilliseconds (int ,int) ;
 TYPE_2__ server ;

int incrementallyRehash(int dbid) {

    if (dictIsRehashing(server.db[dbid].dict)) {
        dictRehashMilliseconds(server.db[dbid].dict,1);
        return 1;
    }

    if (dictIsRehashing(server.db[dbid].expires)) {
        dictRehashMilliseconds(server.db[dbid].expires,1);
        return 1;
    }
    return 0;
}
