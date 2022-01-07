
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_access_private {int module; } ;
struct TYPE_5__ {int psz_name; int psz_filepath; } ;
typedef TYPE_1__ stream_t ;


 int free (int ) ;
 int module_unneed (TYPE_1__*,int ) ;
 struct vlc_access_private* vlc_stream_Private (TYPE_1__*) ;

__attribute__((used)) static void vlc_access_Destroy(stream_t *access)
{
    struct vlc_access_private *priv = vlc_stream_Private(access);

    module_unneed(access, priv->module);
    free(access->psz_filepath);
    free(access->psz_name);
}
