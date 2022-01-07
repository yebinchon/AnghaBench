
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int drc_os; int drc_ignore_objlist; } ;
typedef TYPE_1__ dmu_recv_cookie_t ;


 int ZIO_PRIORITY_SYNC_READ ;
 int dmu_prefetch (int ,int ,int,int ,int ,int ) ;
 int objlist_exists (int ,int ) ;

__attribute__((used)) static void
receive_read_prefetch(dmu_recv_cookie_t *drc, uint64_t object, uint64_t offset,
    uint64_t length)
{
 if (!objlist_exists(drc->drc_ignore_objlist, object)) {
  dmu_prefetch(drc->drc_os, object, 1, offset, length,
      ZIO_PRIORITY_SYNC_READ);
 }
}
