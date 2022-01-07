
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gsize ;
struct TYPE_5__ {int cancel; int input_stream; int data_input_stream; int separator; } ;
typedef TYPE_1__ DmenuModePrivateData ;


 int G_INPUT_STREAM (int ) ;
 int G_PRIORITY_LOW ;
 scalar_t__ TRUE ;
 int async_close_callback ;
 int g_data_input_stream_read_byte (int ,int *,int *) ;
 char* g_data_input_stream_read_upto (int ,int *,int,int *,int *,int *) ;
 int g_free (char*) ;
 int g_input_stream_close_async (int ,int ,int ,int ,TYPE_1__*) ;
 int read_add (TYPE_1__*,char*,int ) ;

__attribute__((used)) static void get_dmenu_sync ( DmenuModePrivateData *pd )
{
    while ( TRUE ) {
        gsize len = 0;
        char *data = g_data_input_stream_read_upto ( pd->data_input_stream, &( pd->separator ), 1, &len, ((void*)0), ((void*)0) );
        if ( data == ((void*)0) ) {
            break;
        }
        g_data_input_stream_read_byte ( pd->data_input_stream, ((void*)0), ((void*)0) );
        read_add ( pd, data, len );
        g_free ( data );
    }
    g_input_stream_close_async ( G_INPUT_STREAM ( pd->input_stream ), G_PRIORITY_LOW, pd->cancel, async_close_callback, pd );
}
