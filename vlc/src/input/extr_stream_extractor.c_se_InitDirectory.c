
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* source; } ;
struct stream_extractor_private {TYPE_3__ directory; } ;
struct TYPE_6__ {int psz_url; int pf_control; int pf_readdir; } ;
typedef TYPE_2__ stream_t ;
typedef TYPE_3__ stream_directory_t ;
struct TYPE_5__ {int psz_url; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int se_DirControl ;
 int se_ReadDir ;
 int strdup (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
se_InitDirectory( struct stream_extractor_private* priv, stream_t* s )
{
    stream_directory_t* directory = &priv->directory;

    s->pf_readdir = se_ReadDir;
    s->pf_control = se_DirControl;
    s->psz_url = strdup( directory->source->psz_url );

    if( unlikely( !s->psz_url ) )
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}
