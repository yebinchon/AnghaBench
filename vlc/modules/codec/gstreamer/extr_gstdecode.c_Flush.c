
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int b_prerolled; int p_que; int p_decoder; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int GstBuffer ;


 int GST_FORMAT_BYTES ;
 int GST_SEEK_FLAG_FLUSH ;
 int * gst_atomic_queue_pop (int ) ;
 int gst_buffer_unref (int *) ;
 int gst_element_seek_simple (int ,int ,int ,int ) ;
 int msg_Dbg (TYPE_1__*,char*,int ) ;

__attribute__((used)) static void Flush( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    GstBuffer *p_buffer;
    gboolean b_ret;





    b_ret = gst_element_seek_simple( p_sys->p_decoder,
            GST_FORMAT_BYTES, GST_SEEK_FLAG_FLUSH, 0 );
    msg_Dbg( p_dec, "new segment event : %d", b_ret );


    while( ( p_buffer = gst_atomic_queue_pop( p_sys->p_que ) ) )
        gst_buffer_unref( p_buffer );

    p_sys->b_prerolled = 0;
}
