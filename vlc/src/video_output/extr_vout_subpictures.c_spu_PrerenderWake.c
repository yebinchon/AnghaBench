
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
typedef int video_format_t ;
struct TYPE_4__ {int lock; int cond; int * chroma_list; int fmtsrc; int fmtdst; } ;
struct TYPE_5__ {TYPE_1__ prerender; } ;
typedef TYPE_2__ spu_private_t ;


 size_t SPU_CHROMALIST_COUNT ;
 int video_format_Clean (int *) ;
 int video_format_Copy (int *,int const*) ;
 int video_format_IsSimilar (int const*,int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void spu_PrerenderWake(spu_private_t *sys,
                              const video_format_t *fmt_dst,
                              const video_format_t *fmt_src,
                              const vlc_fourcc_t *chroma_list)
{
    vlc_mutex_lock(&sys->prerender.lock);
    if(!video_format_IsSimilar(fmt_dst, &sys->prerender.fmtdst))
    {
        video_format_Clean(&sys->prerender.fmtdst);
        video_format_Copy(&sys->prerender.fmtdst, fmt_dst);
    }
    if(!video_format_IsSimilar(fmt_src, &sys->prerender.fmtsrc))
    {
        video_format_Clean(&sys->prerender.fmtsrc);
        video_format_Copy(&sys->prerender.fmtsrc, fmt_src);
    }

    for(size_t i=0; i<SPU_CHROMALIST_COUNT; i++)
    {
        sys->prerender.chroma_list[i] = chroma_list[i];
        if(!chroma_list[i])
            break;
    }

    vlc_cond_signal(&sys->prerender.cond);
    vlc_mutex_unlock(&sys->prerender.lock);
}
