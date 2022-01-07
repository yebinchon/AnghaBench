
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_codec; } ;
typedef TYPE_1__ es_format_t ;
typedef int bo_t ;


 scalar_t__ VLC_CODEC_AMR_NB ;
 int bo_add_16be (int *,int) ;
 int bo_add_8 (int *,int ) ;
 int bo_add_fourcc (int *,char*) ;
 int * box_new (char*) ;

__attribute__((used)) static bo_t *GetDamrTag(es_format_t *p_fmt)
{
    bo_t *damr = box_new("damr");
    if(!damr)
        return ((void*)0);

    bo_add_fourcc(damr, "REFC");
    bo_add_8(damr, 0);

    if (p_fmt->i_codec == VLC_CODEC_AMR_NB)
        bo_add_16be(damr, 0x81ff);
    else
        bo_add_16be(damr, 0x83ff);
    bo_add_16be(damr, 0x1);

    return damr;
}
