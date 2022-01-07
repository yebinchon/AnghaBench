
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_array_t ;
typedef char sout_stream_t ;
typedef int sout_instance_t ;
typedef char config_chain_t ;


 char* config_ChainCreate (char**,char**,char*) ;
 int config_ChainDestroy (char*) ;
 int free (char*) ;
 int sout_StreamDelete (char*) ;
 char* sout_StreamNew (int *,char*,char*,char*) ;
 char* strdup (char const*) ;
 int vlc_array_append_or_abort (int *,char*) ;
 int vlc_array_clear (int *) ;
 int vlc_array_count (int *) ;
 int vlc_array_init (int *) ;
 char* vlc_array_item_at_index (int *,size_t) ;

sout_stream_t *sout_StreamChainNew(sout_instance_t *p_sout, const char *psz_chain,
                                sout_stream_t *p_next, sout_stream_t **pp_last)
{
    if(!psz_chain || !*psz_chain)
    {
        if(pp_last) *pp_last = ((void*)0);
        return p_next;
    }

    char *psz_parser = strdup(psz_chain);
    if(!psz_parser)
        return ((void*)0);

    vlc_array_t cfg, name;
    vlc_array_init(&cfg);
    vlc_array_init(&name);


    while(psz_parser)
    {
        config_chain_t *p_cfg;
        char *psz_name;
        char *psz_rest_chain = config_ChainCreate( &psz_name, &p_cfg, psz_parser );
        free( psz_parser );
        psz_parser = psz_rest_chain;

        vlc_array_append_or_abort(&cfg, p_cfg);
        vlc_array_append_or_abort(&name, psz_name);
    }

    size_t i = vlc_array_count(&name);
    vlc_array_t module;
    vlc_array_init(&module);
    while(i--)
    {
        p_next = sout_StreamNew( p_sout, vlc_array_item_at_index(&name, i),
            vlc_array_item_at_index(&cfg, i), p_next);

        if(!p_next)
            goto error;

        if(i == vlc_array_count(&name) - 1 && pp_last)
            *pp_last = p_next;

        vlc_array_append_or_abort(&module, p_next);
    }

    vlc_array_clear(&name);
    vlc_array_clear(&cfg);
    vlc_array_clear(&module);

    return p_next;

error:

    i++;


    int modules = vlc_array_count(&module);
    while(modules--)
        sout_StreamDelete(vlc_array_item_at_index(&module, modules));
    vlc_array_clear(&module);



    while(i--)
    {
        free(vlc_array_item_at_index(&name, i));
        config_ChainDestroy(vlc_array_item_at_index(&cfg, i));
    }
    vlc_array_clear(&name);
    vlc_array_clear(&cfg);

    return ((void*)0);
}
