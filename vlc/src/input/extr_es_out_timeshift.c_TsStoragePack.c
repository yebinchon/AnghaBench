
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_cmd_w; int i_cmd_max; int * p_cmd; } ;
typedef TYPE_1__ ts_storage_t ;
typedef int ts_cmd_t ;


 int __MAX (int,int) ;
 int * realloc (int *,int) ;

__attribute__((used)) static void TsStoragePack( ts_storage_t *p_storage )
{

    if( p_storage->i_cmd_w >= p_storage->i_cmd_max )
        return;

    p_storage->i_cmd_max = __MAX( p_storage->i_cmd_w, 1 );

    ts_cmd_t *p_new = realloc( p_storage->p_cmd, p_storage->i_cmd_max * sizeof(*p_storage->p_cmd) );
    if( p_new )
        p_storage->p_cmd = p_new;
}
