
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_extractor_private {int object; scalar_t__ source; scalar_t__ module; int (* pf_clean ) (struct stream_extractor_private*) ;} ;


 int module_unneed (int ,scalar_t__) ;
 int stub1 (struct stream_extractor_private*) ;
 int vlc_object_delete (int ) ;
 int vlc_stream_Delete (scalar_t__) ;

__attribute__((used)) static void se_Release( struct stream_extractor_private* priv )
{
    if( priv->pf_clean )
        priv->pf_clean( priv );

    if( priv->module )
    {
        module_unneed( priv->object, priv->module );

        if( priv->source )
            vlc_stream_Delete( priv->source );
    }

    vlc_object_delete(priv->object);
}
