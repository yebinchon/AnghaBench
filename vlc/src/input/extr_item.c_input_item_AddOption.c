
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct TYPE_3__ {int i_options; unsigned int* optflagv; int lock; scalar_t__ optflagc; int * ppsz_options; } ;
typedef TYPE_1__ input_item_t ;


 int TAB_APPEND (int,int *,char*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 unsigned int VLC_INPUT_OPTION_UNIQUE ;
 int VLC_SUCCESS ;
 unsigned int* realloc (unsigned int*,scalar_t__) ;
 int strcmp (int ,char const*) ;
 char* strdup (char const*) ;
 scalar_t__ unlikely (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int input_item_AddOption( input_item_t *p_input, const char *psz_option,
                          unsigned flags )
{
    int err = VLC_SUCCESS;

    if( psz_option == ((void*)0) )
        return VLC_EGENERIC;

    vlc_mutex_lock( &p_input->lock );
    if (flags & VLC_INPUT_OPTION_UNIQUE)
    {
        for (int i = 0 ; i < p_input->i_options; i++)
            if( !strcmp( p_input->ppsz_options[i], psz_option ) )
                goto out;
    }

    uint8_t *flagv = realloc (p_input->optflagv, p_input->optflagc + 1);
    if (flagv == ((void*)0))
    {
        err = VLC_ENOMEM;
        goto out;
    }

    p_input->optflagv = flagv;

    char* psz_option_dup = strdup( psz_option );
    if( unlikely( !psz_option_dup ) )
    {
        err = VLC_ENOMEM;
        goto out;
    }

    TAB_APPEND(p_input->i_options, p_input->ppsz_options, psz_option_dup);

    flagv[p_input->optflagc++] = flags;

out:
    vlc_mutex_unlock( &p_input->lock );
    return err;
}
