
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int description; int tree; } ;
typedef TYPE_1__ vlc_media_source_t ;
typedef int vlc_media_source_provider_t ;
struct services_discovery_owner_t {TYPE_1__* sys; int * cbs; } ;
struct TYPE_8__ {int * owner; TYPE_3__* sd; int name; TYPE_1__ public_data; int rc; } ;
typedef TYPE_2__ media_source_private_t ;
struct TYPE_9__ {int description; } ;


 int free (TYPE_2__*) ;
 TYPE_2__* malloc (scalar_t__) ;
 int sd_cbs ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ unlikely (int) ;
 int vlc_atomic_rc_init (int *) ;
 int vlc_media_tree_New () ;
 int vlc_media_tree_Release (int ) ;
 TYPE_3__* vlc_sd_Create (int *,char const*,struct services_discovery_owner_t*) ;

__attribute__((used)) static vlc_media_source_t *
vlc_media_source_New(vlc_media_source_provider_t *provider, const char *name)
{
    media_source_private_t *priv = malloc(sizeof(*priv) + strlen(name) + 1);
    if (unlikely(!priv))
        return ((void*)0);

    vlc_atomic_rc_init(&priv->rc);

    vlc_media_source_t *ms = &priv->public_data;



    ms->tree = vlc_media_tree_New();
    if (unlikely(!ms->tree))
    {
        free(priv);
        return ((void*)0);
    }

    strcpy(priv->name, name);

    struct services_discovery_owner_t owner = {
        .cbs = &sd_cbs,
        .sys = ms,
    };

    priv->sd = vlc_sd_Create(provider, name, &owner);
    if (unlikely(!priv->sd))
    {
        vlc_media_tree_Release(ms->tree);
        free(priv);
        return ((void*)0);
    }


    ms->description = priv->sd->description;

    priv->owner = provider;

    return ms;
}
