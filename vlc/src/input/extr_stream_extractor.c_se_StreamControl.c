
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {int (* pf_control ) (TYPE_2__*,int,int ) ;} ;
struct stream_extractor_private {TYPE_2__ extractor; } ;
struct TYPE_4__ {struct stream_extractor_private* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int stub1 (TYPE_2__*,int,int ) ;

__attribute__((used)) static int
se_StreamControl( stream_t* stream, int req, va_list args )
{
    struct stream_extractor_private* priv = stream->p_sys;
    return priv->extractor.pf_control( &priv->extractor, req, args );
}
