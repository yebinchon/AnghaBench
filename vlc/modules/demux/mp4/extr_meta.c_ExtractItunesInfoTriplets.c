
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_meta_t ;
struct TYPE_10__ {TYPE_1__* p_binary; } ;
struct TYPE_11__ {scalar_t__ i_type; TYPE_2__ data; } ;
struct TYPE_9__ {int i_blob; scalar_t__ p_blob; } ;
typedef TYPE_3__ MP4_Box_t ;


 scalar_t__ ATOM_ITUN ;
 int BOXDATA (TYPE_3__*) ;
 char* ExtractString (TYPE_3__*) ;
 TYPE_3__* MP4_BoxGet (TYPE_3__*,char*) ;
 int free (char*) ;
 int strncmp (char*,char*,int) ;
 char* strndup (char*,int) ;
 int vlc_meta_AddExtra (int *,char*,char*) ;

__attribute__((used)) static void ExtractItunesInfoTriplets( vlc_meta_t *p_meta, MP4_Box_t *p_box )
{
    if( p_box->i_type != ATOM_ITUN )
        return;
    MP4_Box_t *p_mean = MP4_BoxGet( p_box, "mean" );
    MP4_Box_t *p_name = MP4_BoxGet( p_box, "name" );
    MP4_Box_t *p_data = MP4_BoxGet( p_box, "data" );
    if( !p_mean || p_mean->data.p_binary->i_blob < 4 + 16 ||
        !p_name || p_name->data.p_binary->i_blob < 5 ||
        !p_data || !BOXDATA(p_data) )
        return;

    if( !strncmp( &((char*)p_mean->data.p_binary->p_blob)[4], "com.apple.iTunes",
                  p_mean->data.p_binary->i_blob - 4 ) )
    {
        char *psz_name = strndup( &((char*)p_name->data.p_binary->p_blob)[4],
                                 p_name->data.p_binary->i_blob - 4 );
        char *psz_value = ExtractString( p_data );
        if( psz_name && psz_value )
            vlc_meta_AddExtra( p_meta, psz_name, psz_value );
        free( psz_name );
        free( psz_value );
    }
}
