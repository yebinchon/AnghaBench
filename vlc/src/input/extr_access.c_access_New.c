
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
struct vlc_access_private {int * module; } ;
struct TYPE_10__ {char* psz_name; char* psz_url; char* psz_filepath; int b_preparsing; char const* psz_location; int * pf_control; int * out; int * p_input_item; } ;
typedef TYPE_1__ stream_t ;
typedef int input_thread_t ;
typedef int es_out_t ;


 int MAX_REDIR ;
 TYPE_1__* accessNewAttachment (int *,int *,char const*) ;
 int assert (int ) ;
 int free (char*) ;
 char* get_path (char const*) ;
 int * input_GetItem (int *) ;
 int * module_need (TYPE_1__*,char*,char*,int) ;
 int msg_Dbg (TYPE_1__*,char*,char*) ;
 int msg_Err (TYPE_1__*,char*) ;
 int strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int stream_CommonDelete (TYPE_1__*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strndup (char*,int) ;
 char* strstr (char*,char*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_access_Destroy ;
 TYPE_1__* vlc_stream_CustomNew (int *,int ,int,char*) ;
 struct vlc_access_private* vlc_stream_Private (TYPE_1__*) ;

__attribute__((used)) static stream_t *access_New(vlc_object_t *parent, input_thread_t *input,
                            es_out_t *out, bool preparsing, const char *mrl)
{
    struct vlc_access_private *priv;
    char *redirv[MAX_REDIR];
    unsigned redirc = 0;

    if (strncmp(mrl, "attachment://", 13) == 0)
        return accessNewAttachment(parent, input, mrl);

    stream_t *access = vlc_stream_CustomNew(parent, vlc_access_Destroy,
                                            sizeof (*priv), "access");
    if (unlikely(access == ((void*)0)))
        return ((void*)0);

    access->p_input_item = input ? input_GetItem(input) : ((void*)0);
    access->out = out;
    access->psz_name = ((void*)0);
    access->psz_url = strdup(mrl);
    access->psz_filepath = ((void*)0);
    access->b_preparsing = preparsing;
    priv = vlc_stream_Private(access);

    if (unlikely(access->psz_url == ((void*)0)))
        goto error;

    while (redirc < MAX_REDIR)
    {
        char *url = access->psz_url;
        msg_Dbg(access, "creating access: %s", url);

        const char *p = strstr(url, "://");
        if (p == ((void*)0))
            goto error;

        access->psz_name = strndup(url, p - url);
        if (unlikely(access->psz_name == ((void*)0)))
            goto error;

        access->psz_location = p + 3;
        access->psz_filepath = get_path(access->psz_location);
        if (access->psz_filepath != ((void*)0))
            msg_Dbg(access, " (path: %s)", access->psz_filepath);

        priv->module = module_need(access, "access", access->psz_name, 1);
        if (priv->module != ((void*)0))
        {
            while (redirc > 0)
                free(redirv[--redirc]);

            assert(access->pf_control != ((void*)0));
            return access;
        }

        if (access->psz_url == url)
            goto error;


        msg_Dbg(access, "redirecting to: %s", access->psz_url);
        redirv[redirc++] = url;

        for (unsigned j = 0; j < redirc; j++)
            if (!strcmp(redirv[j], access->psz_url))
            {
                msg_Err(access, "redirection loop");
                goto error;
            }

        free(access->psz_filepath);
        free(access->psz_name);
        access->psz_filepath = access->psz_name = ((void*)0);
    }

    msg_Err(access, "too many redirections");
error:
    while (redirc > 0)
        free(redirv[--redirc]);
    free(access->psz_filepath);
    free(access->psz_name);
    stream_CommonDelete(access);
    return ((void*)0);
}
