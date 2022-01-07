
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * source; int identifier; } ;
struct stream_extractor_private {int * wrapper; int module; void* object; TYPE_1__ directory; int * pf_clean; int pf_init; TYPE_1__ extractor; } ;
typedef int stream_t ;


 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 void* VLC_OBJECT (TYPE_1__*) ;
 int VLC_SUCCESS ;
 int module_need (void*,char const*,char const*,int) ;
 scalar_t__ se_AttachWrapper (struct stream_extractor_private*,int *) ;
 int * se_CleanStream ;
 int se_InitDirectory ;
 int se_InitStream ;
 int se_Release (struct stream_extractor_private*) ;
 int strdup (char const*) ;
 scalar_t__ unlikely (int) ;
 struct stream_extractor_private* vlc_custom_create (int ,int,char const*) ;
 int vlc_object_parent (int *) ;

__attribute__((used)) static int
StreamExtractorAttach( stream_t** source, char const* identifier,
    char const* module_name )
{
    const bool extractor = identifier != ((void*)0);
    char const* capability = extractor ? "stream_extractor"
                                       : "stream_directory";

    struct stream_extractor_private* priv = vlc_custom_create(
        vlc_object_parent(*source), sizeof( *priv ), capability );

    if( unlikely( !priv ) )
        return VLC_ENOMEM;

    if( extractor )
    {
        priv->object = VLC_OBJECT( &priv->extractor );

        priv->pf_init = se_InitStream;
        priv->pf_clean = se_CleanStream;

        priv->extractor.source = *source;
        priv->extractor.identifier = strdup( identifier );

        if( unlikely( !priv->extractor.identifier ) )
            goto error;
    }
    else
    {
        priv->object = VLC_OBJECT( &priv->directory );

        priv->pf_init = se_InitDirectory;
        priv->pf_clean = ((void*)0);

        priv->directory.source = *source;
    }

    priv->module = module_need( priv->object, capability, module_name, 1 );

    if( !priv->module || se_AttachWrapper( priv, *source ) )
        goto error;

    *source = priv->wrapper;
    return VLC_SUCCESS;

error:
    se_Release( priv );
    return VLC_EGENERIC;
}
