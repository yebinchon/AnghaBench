
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int p_access; int * p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
typedef int sout_mux_sys_t ;
struct TYPE_7__ {int* p_buffer; } ;
typedef TYPE_2__ block_t ;


 TYPE_2__* block_Alloc (int) ;
 int free (int *) ;
 int msg_Info (TYPE_1__*,char*) ;
 int sout_AccessOutWrite (int ,TYPE_2__*) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_mux_t *p_mux = (sout_mux_t*)p_this;
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    block_t *p_end;

    msg_Info( p_mux, "Close" );

    p_end = block_Alloc( 4 );
    if( p_end )
    {
        p_end->p_buffer[0] = 0x00; p_end->p_buffer[1] = 0x00;
        p_end->p_buffer[2] = 0x01; p_end->p_buffer[3] = 0xb9;

        sout_AccessOutWrite( p_mux->p_access, p_end );
    }

    free( p_sys );
}
