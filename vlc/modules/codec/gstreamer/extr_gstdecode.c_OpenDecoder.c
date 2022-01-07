
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_6__ ;
typedef struct TYPE_47__ TYPE_4__ ;
typedef struct TYPE_46__ TYPE_3__ ;
typedef struct TYPE_45__ TYPE_38__ ;
typedef struct TYPE_44__ TYPE_2__ ;
typedef struct TYPE_43__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_43__ {int * p_srccaps; int * p_sinkcaps; int * member_1; int * member_0; } ;
typedef TYPE_1__ sink_src_caps_t ;
typedef int guint64 ;
typedef int gpointer ;
typedef TYPE_2__* gboolean ;
struct TYPE_46__ {int pf_flush; int pf_decode; TYPE_4__* p_sys; int fmt_in; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_47__ {int b_prerolled; int b_running; TYPE_2__* p_decoder; TYPE_2__* p_decode_out; TYPE_2__* p_decode_in; TYPE_2__* p_decode_src; TYPE_2__* p_bus; int p_allocator; TYPE_2__* p_que; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_48__ {int seek_data; int * need_data; int * enough_data; } ;
struct TYPE_45__ {int new_caps; } ;
struct TYPE_44__ {scalar_t__ data; } ;
typedef int GstStructure ;
typedef TYPE_2__* GstStateChangeReturn ;
typedef int GstElementFactory ;
typedef TYPE_6__ GstAppSrcCallbacks ;
typedef TYPE_2__ GList ;


 int CloseDecoder (int *) ;
 int DecodeBlock ;
 int * FALSE ;
 int Flush ;
 int GST_APP_SRC (TYPE_2__*) ;
 int GST_APP_STREAM_TYPE_SEEKABLE ;
 int GST_BIN (TYPE_2__*) ;
 TYPE_2__* GST_ELEMENT (int ) ;
 int GST_ELEMENT_FACTORY_TYPE_DECODER ;
 int GST_FORMAT_BYTES ;
 int GST_RANK_MARGINAL ;
 int * GST_STATE_CHANGE_FAILURE ;
 int GST_STATE_PLAYING ;
 TYPE_38__* GST_VLC_VIDEO_SINK (TYPE_2__*) ;
 int G_CALLBACK (int ) ;
 int G_OBJECT (TYPE_2__*) ;
 int TRUE ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_ENOMOD ;
 int VLC_GST_CHECK (TYPE_2__*,int *,char*,int) ;
 int VLC_SUCCESS ;
 TYPE_4__* calloc (int,int) ;
 int caps_handoff_cb ;
 int find_decoder_func ;
 int frame_handoff_cb ;
 TYPE_2__* g_list_find_custom (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_2__* g_list_sort (TYPE_2__*,int ) ;
 int g_object_set (int ,char*,int *,char*,int ,char*,int ,char*,int,char*,...) ;
 int g_signal_connect (int ,char*,int ,TYPE_3__*) ;
 int gst_app_src_set_callbacks (int ,TYPE_6__*,TYPE_3__*,int *) ;
 TYPE_2__* gst_atomic_queue_new (int ) ;
 int gst_bin_add_many (int ,TYPE_2__*,TYPE_2__*,TYPE_2__*,int *) ;
 int gst_bin_new (char*) ;
 TYPE_2__* gst_bus_new () ;
 int gst_caps_append_structure (int *,int *) ;
 int * gst_caps_new_empty () ;
 int * gst_caps_new_empty_simple (char*) ;
 int gst_caps_unref (int *) ;
 TYPE_2__* gst_element_factory_create (int *,int *) ;
 TYPE_2__* gst_element_factory_list_get_elements (int ,int ) ;
 void* gst_element_factory_make (char*,int *) ;
 TYPE_2__* gst_element_link (TYPE_2__*,TYPE_2__*) ;
 int gst_element_set_bus (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* gst_element_set_state (TYPE_2__*,int ) ;
 int gst_object_ref (TYPE_2__*) ;
 int gst_plugin_feature_list_free (TYPE_2__*) ;
 int gst_plugin_feature_rank_compare_func ;
 int gst_structure_free (int *) ;
 int gst_vlc_picture_plane_allocator_new (int ) ;
 int msg_Dbg (TYPE_3__*,char*,char*) ;
 int msg_Err (TYPE_3__*,char*) ;
 int pad_added_cb ;
 int seek_data_cb ;
 int var_CreateGetBool (TYPE_3__*,char*) ;
 int vlc_gst_init () ;
 int * vlc_to_gst_fmt (int *) ;

__attribute__((used)) static int OpenDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = ( decoder_t* )p_this;
    decoder_sys_t *p_sys;
    GstStateChangeReturn i_ret;
    gboolean b_ret;
    sink_src_caps_t caps = { ((void*)0), ((void*)0) };
    GstStructure *p_str;
    GstAppSrcCallbacks cb;
    int i_rval = VLC_SUCCESS;
    GList *p_list;
    bool dbin, vlc_pool;




    if( !vlc_gst_init( ))
    {
        msg_Err( p_dec, "failed to register vlcvideosink" );
        return VLC_EGENERIC;
    }

    p_str = vlc_to_gst_fmt( &p_dec->fmt_in );
    if( !p_str )
        return VLC_EGENERIC;


    p_sys = p_dec->p_sys = calloc( 1, sizeof( *p_sys ) );
    if( p_sys == ((void*)0) )
    {
        gst_structure_free( p_str );
        return VLC_ENOMEM;
    }

    dbin = var_CreateGetBool( p_dec, "use-decodebin" );
    msg_Dbg( p_dec, "Using decodebin? %s", dbin ? "yes ":"no" );

    caps.p_sinkcaps = gst_caps_new_empty( );
    gst_caps_append_structure( caps.p_sinkcaps, p_str );

    caps.p_srccaps = gst_caps_new_empty_simple( "video/x-raw" );


    p_list = gst_element_factory_list_get_elements(
            GST_ELEMENT_FACTORY_TYPE_DECODER, GST_RANK_MARGINAL );
    { if( p_list == ((void*)0) ){ msg_Err( p_dec, "no decoder list found" ); i_rval = VLC_ENOMOD; goto fail; } };
    if( !dbin )
    {
        GList *p_l;

        p_list = g_list_sort( p_list, gst_plugin_feature_rank_compare_func );
        { if( p_list == ((void*)0) ){ msg_Err( p_dec, "failed to sort decoders list" ); i_rval = VLC_ENOMOD; goto fail; } };

        p_l = g_list_find_custom( p_list, &caps, find_decoder_func );
        { if( p_l == ((void*)0) ){ msg_Err( p_dec, "no suitable decoder found" ); i_rval = VLC_ENOMOD; goto fail; } };


        p_sys->p_decode_in = gst_element_factory_create(
                ( GstElementFactory* )p_l->data, ((void*)0) );
        { if( p_sys->p_decode_in == ((void*)0) ){ msg_Err( p_dec, "failed to create decoder" ); i_rval = VLC_ENOMOD; goto fail; } };

    }
    else
    {
        GList *p_l;


        p_l = g_list_find_custom( p_list, &caps, find_decoder_func );
        { if( p_l == ((void*)0) ){ msg_Err( p_dec, "no suitable decoder found" ); i_rval = VLC_ENOMOD; goto fail; } };

    }
    gst_plugin_feature_list_free( p_list );
    p_list = ((void*)0);
    gst_caps_unref( caps.p_srccaps );
    caps.p_srccaps = ((void*)0);

    p_sys->b_prerolled = 0;
    p_sys->b_running = 0;



    p_sys->p_que = gst_atomic_queue_new( 0 );
    { if( p_sys->p_que == ((void*)0) ){ msg_Err( p_dec, "failed to create queue" ); i_rval = VLC_ENOMEM; goto fail; } };


    p_sys->p_decode_src = gst_element_factory_make( "appsrc", ((void*)0) );
    { if( p_sys->p_decode_src == ((void*)0) ){ msg_Err( p_dec, "appsrc not found" ); i_rval = VLC_ENOMOD; goto fail; } };

    g_object_set( G_OBJECT( p_sys->p_decode_src ), "caps", caps.p_sinkcaps,
            "emit-signals", TRUE, "format", GST_FORMAT_BYTES,
            "stream-type", GST_APP_STREAM_TYPE_SEEKABLE,





            "block", TRUE, "max-bytes", ( guint64 )1, ((void*)0) );
    gst_caps_unref( caps.p_sinkcaps );
    caps.p_sinkcaps = ((void*)0);
    cb.enough_data = ((void*)0);
    cb.need_data = ((void*)0);
    cb.seek_data = seek_data_cb;
    gst_app_src_set_callbacks( GST_APP_SRC( p_sys->p_decode_src ),
            &cb, p_dec, ((void*)0) );

    if( dbin )
    {
        p_sys->p_decode_in = gst_element_factory_make( "decodebin", ((void*)0) );
        { if( p_sys->p_decode_in == ((void*)0) ){ msg_Err( p_dec, "decodebin not found" ); i_rval = VLC_ENOMOD; goto fail; } };





        g_signal_connect( G_OBJECT( p_sys->p_decode_in ), "pad-added",
                G_CALLBACK( pad_added_cb ), p_dec );

    }


    p_sys->p_decode_out = gst_element_factory_make( "vlcvideosink", ((void*)0) );
    { if( p_sys->p_decode_out == ((void*)0) ){ msg_Err( p_dec, "vlcvideosink not found" ); i_rval = VLC_ENOMOD; goto fail; } };


    vlc_pool = var_CreateGetBool( p_dec, "use-vlcpool" );
    msg_Dbg( p_dec, "Using vlc pool? %s", vlc_pool ? "yes ":"no" );

    p_sys->p_allocator = gst_vlc_picture_plane_allocator_new(
            (gpointer) p_dec );
    g_object_set( G_OBJECT( p_sys->p_decode_out ), "sync", FALSE, "allocator",
            p_sys->p_allocator, "id", (gpointer) p_dec, "use-pool", vlc_pool, ((void*)0) );
    g_signal_connect( G_OBJECT( p_sys->p_decode_out ), "new-buffer",
            G_CALLBACK( frame_handoff_cb ), p_dec );






    GST_VLC_VIDEO_SINK( p_sys->p_decode_out )->new_caps = caps_handoff_cb;


    p_sys->p_decoder = GST_ELEMENT( gst_bin_new( "decoder" ) );
    { if( p_sys->p_decoder == ((void*)0) ){ msg_Err( p_dec, "bin not found" ); i_rval = VLC_ENOMOD; goto fail; } };
    p_sys->p_bus = gst_bus_new( );
    { if( p_sys->p_bus == ((void*)0) ){ msg_Err( p_dec, "failed to create bus" ); i_rval = VLC_ENOMOD; goto fail; } };

    gst_element_set_bus( p_sys->p_decoder, p_sys->p_bus );

    gst_bin_add_many( GST_BIN( p_sys->p_decoder ),
            p_sys->p_decode_src, p_sys->p_decode_in,
            p_sys->p_decode_out, ((void*)0) );
    gst_object_ref( p_sys->p_decode_src );
    gst_object_ref( p_sys->p_decode_in );
    gst_object_ref( p_sys->p_decode_out );

    b_ret = gst_element_link( p_sys->p_decode_src, p_sys->p_decode_in );
    { if( b_ret == FALSE ){ msg_Err( p_dec, "failed to link src <-> in" ); i_rval = VLC_EGENERIC; goto fail; } };


    if( !dbin )
    {
        b_ret = gst_element_link( p_sys->p_decode_in, p_sys->p_decode_out );
        { if( b_ret == FALSE ){ msg_Err( p_dec, "failed to link in <-> out" ); i_rval = VLC_EGENERIC; goto fail; } };

    }


    i_ret = gst_element_set_state( p_sys->p_decoder, GST_STATE_PLAYING );
    { if( i_ret == GST_STATE_CHANGE_FAILURE ){ msg_Err( p_dec, "set state failure" ); i_rval = VLC_EGENERIC; goto fail; } };

    p_sys->b_running = 1;


    p_dec->pf_decode = DecodeBlock;
    p_dec->pf_flush = Flush;

    return VLC_SUCCESS;

fail:
    if( caps.p_sinkcaps )
        gst_caps_unref( caps.p_sinkcaps );
    if( caps.p_srccaps )
        gst_caps_unref( caps.p_srccaps );
    if( p_list )
        gst_plugin_feature_list_free( p_list );
    CloseDecoder( ( vlc_object_t* )p_dec );
    return i_rval;
}
