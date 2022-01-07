
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cow_size; } ;
struct TYPE_4__ {TYPE_1__ child_info_data; } ;


 int LL_NOTICE ;
 int sendChildInfo (int) ;
 TYPE_2__ server ;
 int serverLog (int ,char*,char*,size_t) ;
 size_t zmalloc_get_private_dirty (int) ;

void sendChildCOWInfo(int ptype, char *pname) {
    size_t private_dirty = zmalloc_get_private_dirty(-1);

    if (private_dirty) {
        serverLog(LL_NOTICE,
            "%s: %zu MB of memory used by copy-on-write",
            pname, private_dirty/(1024*1024));
    }

    server.child_info_data.cow_size = private_dirty;
    sendChildInfo(ptype);
}
