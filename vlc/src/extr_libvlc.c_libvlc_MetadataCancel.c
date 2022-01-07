
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parser; } ;
typedef TYPE_1__ libvlc_priv_t ;
typedef int libvlc_int_t ;


 int input_preparser_Cancel (int *,void*) ;
 TYPE_1__* libvlc_priv (int *) ;
 scalar_t__ unlikely (int ) ;

void libvlc_MetadataCancel(libvlc_int_t *libvlc, void *id)
{
    libvlc_priv_t *priv = libvlc_priv(libvlc);

    if (unlikely(priv->parser == ((void*)0)))
        return;

    input_preparser_Cancel(priv->parser, id);
}
