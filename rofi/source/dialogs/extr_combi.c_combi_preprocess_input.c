
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_5__ {unsigned int num_switchers; TYPE_1__* switchers; } ;
struct TYPE_4__ {int disable; int mode; } ;
typedef int Mode ;
typedef TYPE_2__ CombiModePrivateData ;


 int FALSE ;
 int TRUE ;
 char* g_strdup (char const*) ;
 scalar_t__ g_utf8_pointer_to_offset (char const*,char*) ;
 size_t g_utf8_strlen (char const*,int) ;
 char* mode_get_name (int ) ;
 TYPE_2__* mode_get_private_data (int *) ;
 char* strchrnul (char const*,char) ;
 scalar_t__ utf8_strncmp (char const*,char const*,scalar_t__) ;

__attribute__((used)) static char * combi_preprocess_input ( Mode *sw, const char *input )
{
    CombiModePrivateData *pd = mode_get_private_data ( sw );
    for ( unsigned i = 0; i < pd->num_switchers; i++ ) {
        pd->switchers[i].disable = FALSE;
    }
    if ( input != ((void*)0) && input[0] == '!' ) {
        char *eob = strchrnul ( input, ' ' );
        ssize_t bang_len = g_utf8_pointer_to_offset ( input, eob ) - 1;
        if ( bang_len > 0 ) {
            for ( unsigned i = 0; i < pd->num_switchers; i++ ) {
                const char *mode_name = mode_get_name ( pd->switchers[i].mode );
                size_t mode_name_len = g_utf8_strlen ( mode_name, -1 );
                if ( !( (size_t) bang_len <= mode_name_len && utf8_strncmp ( &input[1], mode_name, bang_len ) == 0 ) ) {

                    pd->switchers[i].disable = TRUE;
                }
            }
            if ( eob[0] == '\0' || eob[1] == '\0' ) {
                return ((void*)0);
            }
            return g_strdup ( eob + 1 );
        }
    }
    return g_strdup ( input );
}
