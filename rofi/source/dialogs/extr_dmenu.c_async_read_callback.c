
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gsize ;
typedef scalar_t__ gpointer ;
struct TYPE_5__ {int cancel; int separator; int data_input_stream; } ;
typedef int GObject ;
typedef int GError ;
typedef int GDataInputStream ;
typedef int GAsyncResult ;
typedef TYPE_1__ DmenuModePrivateData ;


 int G_INPUT_STREAM (int *) ;
 int G_PRIORITY_LOW ;
 int async_close_callback ;
 int g_cancellable_is_cancelled (int ) ;
 int g_data_input_stream_read_byte (int *,int *,int **) ;
 int g_data_input_stream_read_upto_async (int ,int *,int,int ,int ,void (*) (int *,int *,scalar_t__),TYPE_1__*) ;
 char* g_data_input_stream_read_upto_finish (int *,int *,int *,int *) ;
 int g_debug (char*) ;
 int g_error_free (int *) ;
 int g_free (char*) ;
 int g_input_stream_close_async (int ,int ,int ,int ,TYPE_1__*) ;
 int read_add (TYPE_1__*,char*,int ) ;
 int rofi_view_get_active () ;
 int rofi_view_reload () ;
 int rofi_view_set_overlay (int ,int *) ;

__attribute__((used)) static void async_read_callback ( GObject *source_object, GAsyncResult *res, gpointer user_data )
{
    GDataInputStream *stream = (GDataInputStream *) source_object;
    DmenuModePrivateData *pd = (DmenuModePrivateData *) user_data;
    gsize len;
    char *data = g_data_input_stream_read_upto_finish ( stream, res, &len, ((void*)0) );
    if ( data != ((void*)0) ) {

        g_data_input_stream_read_byte ( stream, ((void*)0), ((void*)0) );
        read_add ( pd, data, len );
        g_free ( data );
        rofi_view_reload ();

        g_data_input_stream_read_upto_async ( pd->data_input_stream, &( pd->separator ), 1, G_PRIORITY_LOW, pd->cancel,
                                              async_read_callback, pd );
        return;
    }
    else {
        GError *error = ((void*)0);


        g_data_input_stream_read_byte ( stream, ((void*)0), &error );
        if ( error == ((void*)0) ) {

            read_add ( pd, "", 0 );
            rofi_view_reload ();

            g_data_input_stream_read_upto_async ( pd->data_input_stream, &( pd->separator ), 1, G_PRIORITY_LOW, pd->cancel,
                                                  async_read_callback, pd );
            return;
        }
        else {
            g_error_free ( error );
        }
    }
    if ( !g_cancellable_is_cancelled ( pd->cancel ) ) {

        g_debug ( "Clearing overlay" );
        rofi_view_set_overlay ( rofi_view_get_active (), ((void*)0) );
        g_input_stream_close_async ( G_INPUT_STREAM ( stream ), G_PRIORITY_LOW, pd->cancel, async_close_callback, pd );
    }
}
