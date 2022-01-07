
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int varname ;
typedef size_t ssize_t ;
typedef int libvlc_instance_t ;
struct TYPE_4__ {char* psz_device; char* psz_description; struct TYPE_4__* p_next; } ;
typedef TYPE_1__ libvlc_audio_output_device_t ;


 scalar_t__ VLC_VAR_STRING ;
 size_t config_GetPszChoices (char*,char***,char***) ;
 scalar_t__ config_GetType (char*) ;
 int free (char**) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ snprintf (char*,int,char*,char const*) ;
 scalar_t__ unlikely (int ) ;

libvlc_audio_output_device_t *
libvlc_audio_output_device_list_get( libvlc_instance_t *p_instance,
                                     const char *aout )
{
    char varname[32];
    if( (size_t)snprintf( varname, sizeof(varname), "%s-audio-device", aout )
                                                           >= sizeof(varname) )
        return ((void*)0);

    if( config_GetType(varname) != VLC_VAR_STRING )
        return ((void*)0);

    libvlc_audio_output_device_t *list = ((void*)0), **pp = &list;
    char **values, **texts;
    ssize_t count = config_GetPszChoices( varname, &values, &texts );
    for( ssize_t i = 0; i < count; i++ )
    {
        libvlc_audio_output_device_t *item = malloc( sizeof(*item) );
        if( unlikely(item == ((void*)0)) )
            break;

        *pp = item;
        pp = &item->p_next;
        item->psz_device = values[i];
        item->psz_description = texts[i];
    }

    *pp = ((void*)0);
    free( texts );
    free( values );
    (void) p_instance;
    return list;
}
