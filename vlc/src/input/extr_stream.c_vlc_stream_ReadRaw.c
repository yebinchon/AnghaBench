
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* pf_read ) (TYPE_1__*,char*,int) ;int * (* pf_block ) (TYPE_1__*,int*) ;} ;
typedef TYPE_1__ stream_t ;
struct TYPE_8__ {int * block; } ;
typedef TYPE_2__ stream_priv_t ;
typedef scalar_t__ ssize_t ;
typedef int dummy ;


 size_t SSIZE_MAX ;
 int assert (int) ;
 scalar_t__ stub1 (TYPE_1__*,char*,int) ;
 scalar_t__ stub2 (TYPE_1__*,void*,size_t) ;
 int * stub3 (TYPE_1__*,int*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_killed () ;
 scalar_t__ vlc_stream_CopyBlock (int **,void*,size_t) ;

__attribute__((used)) static ssize_t vlc_stream_ReadRaw(stream_t *s, void *buf, size_t len)
{
    stream_priv_t *priv = (stream_priv_t *)s;
    ssize_t ret;

    assert(len <= SSIZE_MAX);

    if (vlc_killed())
        return 0;

    if (s->pf_read != ((void*)0))
    {
        assert(priv->block == ((void*)0));
        if (buf == ((void*)0))
        {
            if (unlikely(len == 0))
                return 0;

            char dummy[(len <= 256 ? len : 256)];
            ret = s->pf_read(s, dummy, sizeof (dummy));
        }
        else
            ret = s->pf_read(s, buf, len);
        return ret;
    }

    ret = vlc_stream_CopyBlock(&priv->block, buf, len);
    if (ret >= 0)
        return ret;

    if (s->pf_block != ((void*)0))
    {
        bool eof = 0;

        priv->block = s->pf_block(s, &eof);
        ret = vlc_stream_CopyBlock(&priv->block, buf, len);
        if (ret >= 0)
            return ret;
        return eof ? 0 : -1;
    }

    return 0;
}
