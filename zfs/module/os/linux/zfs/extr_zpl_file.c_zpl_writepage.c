
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct writeback_control {int sync_mode; } ;
struct page {TYPE_2__* mapping; } ;
struct TYPE_6__ {TYPE_1__* z_os; } ;
struct TYPE_5__ {int host; } ;
struct TYPE_4__ {scalar_t__ os_sync; } ;


 TYPE_3__* ITOZSB (int ) ;
 int WB_SYNC_ALL ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int zpl_putpage (struct page*,struct writeback_control*,TYPE_2__*) ;

__attribute__((used)) static int
zpl_writepage(struct page *pp, struct writeback_control *wbc)
{
 if (ITOZSB(pp->mapping->host)->z_os->os_sync == ZFS_SYNC_ALWAYS)
  wbc->sync_mode = WB_SYNC_ALL;

 return (zpl_putpage(pp, wbc, pp->mapping));
}
