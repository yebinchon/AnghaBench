
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int fifo; } ;
typedef TYPE_2__ filter_sys_t ;
typedef int block_t ;


 int DoRealWork (TYPE_1__*,int *) ;
 int * block_FifoGet (int ) ;
 int block_Release (int ) ;
 int vlc_assert_unreachable () ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *Thread( void *data )
{
    filter_t *p_filter = data;
    filter_sys_t *sys = p_filter->p_sys;

    for (;;)
    {
        block_t *block = block_FifoGet( sys->fifo );

        int canc = vlc_savecancel( );
        block_Release( DoRealWork( p_filter, block ) );
        vlc_restorecancel( canc );
    }
    vlc_assert_unreachable();
}
