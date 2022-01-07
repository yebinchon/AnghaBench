
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_6__ {int (* pf_control ) (TYPE_1__*,int,int ) ;} ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int * block; int * peek; int offset; } ;
typedef TYPE_2__ stream_priv_t ;




 int VLC_SUCCESS ;
 int block_Release (int *) ;
 int stub1 (TYPE_1__*,int,int ) ;
 int stub2 (TYPE_1__*,int,int ) ;

int vlc_stream_vaControl(stream_t *s, int cmd, va_list args)
{
    stream_priv_t *priv = (stream_priv_t *)s;

    switch (cmd)
    {
        case 128:
        case 129:
        {
            int ret = s->pf_control(s, cmd, args);
            if (ret != VLC_SUCCESS)
                return ret;

            priv->offset = 0;

            if (priv->peek != ((void*)0))
            {
                block_Release(priv->peek);
                priv->peek = ((void*)0);
            }

            if (priv->block != ((void*)0))
            {
                block_Release(priv->block);
                priv->block = ((void*)0);
            }

            return VLC_SUCCESS;
        }
    }
    return s->pf_control(s, cmd, args);
}
