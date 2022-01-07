
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int identifier; TYPE_1__* source; scalar_t__ pf_read; } ;
struct stream_extractor_private {TYPE_2__ extractor; } ;
struct TYPE_7__ {int psz_url; int pf_control; int pf_seek; int pf_block; int pf_read; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_5__ {int psz_url; } ;


 int StreamExtractorCreateMRL (int ,int ) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int se_StreamBlock ;
 int se_StreamControl ;
 int se_StreamRead ;
 int se_StreamSeek ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
se_InitStream( struct stream_extractor_private* priv, stream_t* s )
{
    if( priv->extractor.pf_read ) s->pf_read = se_StreamRead;
    else s->pf_block = se_StreamBlock;

    s->pf_seek = se_StreamSeek;
    s->pf_control = se_StreamControl;
    s->psz_url = StreamExtractorCreateMRL( priv->extractor.source->psz_url,
                                           priv->extractor.identifier );
    if( unlikely( !s->psz_url ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
