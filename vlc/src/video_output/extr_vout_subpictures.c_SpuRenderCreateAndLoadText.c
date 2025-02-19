
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int spu_t ;
struct TYPE_10__ {int i_width; int i_visible_width; int i_height; int i_visible_height; } ;
struct TYPE_12__ {TYPE_2__ video; } ;
struct TYPE_9__ {int * sys; } ;
struct TYPE_11__ {int p_module; int pf_get_attachments; TYPE_7__ fmt_out; TYPE_7__ fmt_in; TYPE_1__ owner; } ;
typedef TYPE_3__ filter_t ;


 int VIDEO_ES ;
 int es_format_Init (TYPE_7__*,int ,int ) ;
 int module_need_var (TYPE_3__*,char*,char*) ;
 int spu_get_attachments ;
 TYPE_3__* vlc_custom_create (int *,int,char*) ;
 int vlc_object_delete (TYPE_3__*) ;

__attribute__((used)) static filter_t *SpuRenderCreateAndLoadText(spu_t *spu)
{
    filter_t *text = vlc_custom_create(spu, sizeof(*text), "spu text");
    if (!text)
        return ((void*)0);

    text->owner.sys = spu;

    es_format_Init(&text->fmt_in, VIDEO_ES, 0);

    es_format_Init(&text->fmt_out, VIDEO_ES, 0);
    text->fmt_out.video.i_width =
    text->fmt_out.video.i_visible_width = 32;
    text->fmt_out.video.i_height =
    text->fmt_out.video.i_visible_height = 32;

    text->pf_get_attachments = spu_get_attachments;

    text->p_module = module_need_var(text, "text renderer", "text-renderer");
    if (!text->p_module)
    {
        vlc_object_delete(text);
        return ((void*)0);
    }

    return text;
}
