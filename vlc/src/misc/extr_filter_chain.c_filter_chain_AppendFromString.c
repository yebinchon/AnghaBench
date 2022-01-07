
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int filter_t ;
struct TYPE_7__ {TYPE_1__* last; int obj; } ;
typedef TYPE_2__ filter_chain_t ;
typedef int config_chain_t ;
struct TYPE_6__ {int filter; } ;


 int VLC_EGENERIC ;
 char* config_ChainCreate (char**,int **,char const*) ;
 int config_ChainDestroy (int *) ;
 int * filter_chain_AppendFilter (TYPE_2__*,char*,int *,int *) ;
 int filter_chain_DeleteFilter (TYPE_2__*,int *) ;
 int free (char*) ;
 int msg_Err (int ,char*,char*) ;

int filter_chain_AppendFromString( filter_chain_t *chain, const char *str )
{
    char *buf = ((void*)0);
    int ret = 0;

    while( str != ((void*)0) && str[0] != '\0' )
    {
        config_chain_t *cfg;
        char *name;

        char *next = config_ChainCreate( &name, &cfg, str );

        str = next;
        free( buf );
        buf = next;

        filter_t *filter = filter_chain_AppendFilter( chain, name, cfg, ((void*)0) );
        if( cfg )
            config_ChainDestroy( cfg );

        if( filter == ((void*)0) )
        {
            msg_Err( chain->obj, "Failed to append '%s' to chain", name );
            free( name );
            goto error;
        }

        free( name );
        ret++;
    }

    free( buf );
    return ret;

error:
    while( ret > 0 )
    {
        filter_chain_DeleteFilter( chain, &chain->last->filter );
        ret--;
    }
    free( buf );
    return VLC_EGENERIC;
}
