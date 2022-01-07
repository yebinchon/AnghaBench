
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_parsed_status_t ;
typedef int input_item_t ;
typedef enum input_item_preparse_status { ____Placeholder_input_item_preparse_status } input_item_preparse_status ;






 int VLC_UNUSED (int *) ;
 int libvlc_media_parsed_status_done ;
 int libvlc_media_parsed_status_failed ;
 int libvlc_media_parsed_status_skipped ;
 int libvlc_media_parsed_status_timeout ;
 int send_parsed_changed (int *,int ) ;

__attribute__((used)) static void input_item_preparse_ended(input_item_t *item,
                                      enum input_item_preparse_status status,
                                      void *user_data)
{
    VLC_UNUSED(item);
    libvlc_media_t * p_md = user_data;
    libvlc_media_parsed_status_t new_status;

    switch( status )
    {
        case 129:
            new_status = libvlc_media_parsed_status_skipped;
            break;
        case 130:
            new_status = libvlc_media_parsed_status_failed;
            break;
        case 128:
            new_status = libvlc_media_parsed_status_timeout;
            break;
        case 131:
            new_status = libvlc_media_parsed_status_done;
            break;
        default:
            return;
    }
    send_parsed_changed( p_md, new_status );
}
