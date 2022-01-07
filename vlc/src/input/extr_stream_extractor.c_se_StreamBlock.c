
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * (* pf_block ) (TYPE_2__*,int*) ;} ;
struct stream_extractor_private {TYPE_2__ extractor; } ;
struct TYPE_4__ {struct stream_extractor_private* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int block_t ;


 int * stub1 (TYPE_2__*,int*) ;

__attribute__((used)) static block_t*
se_StreamBlock( stream_t* stream, bool* eof )
{
    struct stream_extractor_private* priv = stream->p_sys;
    return priv->extractor.pf_block( &priv->extractor, eof );
}
