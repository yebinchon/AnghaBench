
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* pf_read ) (TYPE_2__*,void*,size_t) ;} ;
struct stream_extractor_private {TYPE_2__ extractor; } ;
struct TYPE_4__ {struct stream_extractor_private* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int ssize_t ;


 int stub1 (TYPE_2__*,void*,size_t) ;

__attribute__((used)) static ssize_t
se_StreamRead( stream_t* stream, void* buf, size_t len )
{
    struct stream_extractor_private* priv = stream->p_sys;
    return priv->extractor.pf_read( &priv->extractor, buf, len );
}
