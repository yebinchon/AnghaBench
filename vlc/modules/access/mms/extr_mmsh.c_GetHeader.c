
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {int i_type; scalar_t__ i_data; int p_data; scalar_t__ i_size; } ;
typedef TYPE_2__ chunk_t ;
struct TYPE_10__ {scalar_t__ i_header; int * p_header; } ;
typedef TYPE_3__ access_sys_t ;


 scalar_t__ GetPacket (TYPE_1__*,TYPE_2__*) ;
 int free (int *) ;
 int memcpy (int *,int ,size_t) ;
 int msg_Dbg (TYPE_1__*,char*,size_t) ;
 int * xrealloc (int *,scalar_t__) ;

__attribute__((used)) static void GetHeader( stream_t *p_access, int i_content_length )
{
    access_sys_t *p_sys = p_access->p_sys;
    int i_read_content = 0;


    p_sys->i_header = 0;
    free( p_sys->p_header );
    p_sys->p_header = ((void*)0);
    for( ;; )
    {
        chunk_t ck;
        if( (i_content_length >= 0 && i_read_content >= i_content_length) || GetPacket( p_access, &ck ) || ck.i_type != 0x4824 )
            break;

        i_read_content += (4+ck.i_size);

        if( ck.i_data > 0 )
        {
            p_sys->i_header += ck.i_data;
            p_sys->p_header = xrealloc( p_sys->p_header, p_sys->i_header );
            memcpy( &p_sys->p_header[p_sys->i_header - ck.i_data],
                    ck.p_data, ck.i_data );
        }
    }
    msg_Dbg( p_access, "complete header size=%d", p_sys->i_header );
}
