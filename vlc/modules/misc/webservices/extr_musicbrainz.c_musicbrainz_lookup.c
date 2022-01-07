
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int root; } ;
typedef TYPE_1__ musicbrainz_lookup_t ;


 int free (void*) ;
 int json_parse_document (int *,void*) ;
 void* json_retrieve_document (int *,char const*) ;
 int msg_Dbg (int *,char*,...) ;
 TYPE_1__* musicbrainz_lookup_new () ;

__attribute__((used)) static musicbrainz_lookup_t * musicbrainz_lookup(vlc_object_t *p_obj, const char *psz_url)
{
    msg_Dbg(p_obj, "Querying MB for %s", psz_url);
    void *p_buffer = json_retrieve_document(p_obj, psz_url);
    if(!p_buffer)
        return ((void*)0);

    musicbrainz_lookup_t *p_lookup = musicbrainz_lookup_new();
    if(p_lookup)
    {
        p_lookup->root = json_parse_document(p_obj, p_buffer);
        if (!p_lookup->root)
            msg_Dbg(p_obj, "No results");
    }
    free(p_buffer);
    return p_lookup;
}
