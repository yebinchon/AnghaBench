
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_9__ {int video; } ;
struct TYPE_8__ {scalar_t__ i_cat; } ;
struct TYPE_12__ {TYPE_4__* cbs; TYPE_2__ fmt_out; TYPE_1__ fmt_in; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_10__ {int * (* buffer_new ) (TYPE_5__*) ;} ;
struct TYPE_11__ {TYPE_3__ video; } ;


 scalar_t__ VIDEO_ES ;
 int * picture_NewFromFormat (int *) ;
 int * stub1 (TYPE_5__*) ;
 int vlc_assert (int) ;

picture_t *decoder_NewPicture( decoder_t *dec )
{
    vlc_assert( dec->fmt_in.i_cat == VIDEO_ES && dec->cbs != ((void*)0) );
    if (dec->cbs->video.buffer_new == ((void*)0))
        return picture_NewFromFormat( &dec->fmt_out.video );
    return dec->cbs->video.buffer_new( dec );
}
