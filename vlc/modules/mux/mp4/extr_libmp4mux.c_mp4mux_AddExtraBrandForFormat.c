
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tracks; } ;
typedef TYPE_1__ mp4mux_handle_t ;
struct TYPE_7__ {int i_codec; } ;
typedef TYPE_2__ es_format_t ;


 int BRAND_M4A ;
 int BRAND_av01 ;
 int BRAND_avc1 ;
 int BRAND_hevc ;
 int BRAND_iso6 ;
 int BRAND_mp41 ;
 int mp4mux_AddExtraBrand (TYPE_1__*,int ) ;
 int vlc_array_count (int *) ;

__attribute__((used)) static void mp4mux_AddExtraBrandForFormat(mp4mux_handle_t *h, const es_format_t *fmt)
{
    switch(fmt->i_codec)
    {
        case 133:
            mp4mux_AddExtraBrand(h, BRAND_avc1);
            break;
        case 132:
            mp4mux_AddExtraBrand(h, BRAND_hevc);
            break;
        case 138:
            mp4mux_AddExtraBrand(h, BRAND_av01);
            mp4mux_AddExtraBrand(h, BRAND_iso6);
            break;
        case 131:
        case 128:
        case 129:
        case 137:
        case 136:
        case 135:
        case 134:
            mp4mux_AddExtraBrand(h, BRAND_mp41);
            break;
        case 130:
            mp4mux_AddExtraBrand(h, BRAND_mp41);
            if(vlc_array_count(&h->tracks) == 1)
                mp4mux_AddExtraBrand(h, BRAND_M4A);
            break;
        default:
            break;
    }
}
