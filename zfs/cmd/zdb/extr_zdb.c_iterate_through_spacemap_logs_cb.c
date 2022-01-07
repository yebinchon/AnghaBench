
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* uic_cb ) (int ,int *,int ,int ) ;int uic_arg; int uic_txg; int uic_spa; } ;
typedef TYPE_1__ unflushed_iter_cb_arg_t ;
typedef int space_map_entry_t ;


 int stub1 (int ,int *,int ,int ) ;

__attribute__((used)) static int
iterate_through_spacemap_logs_cb(space_map_entry_t *sme, void *arg)
{
 unflushed_iter_cb_arg_t *uic = arg;
 return (uic->uic_cb(uic->uic_spa, sme, uic->uic_txg, uic->uic_arg));
}
