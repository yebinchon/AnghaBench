
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* psz_id; int p_cssstyle; } ;
typedef TYPE_1__ webvtt_region_t ;


 int free (TYPE_1__*) ;
 int text_style_Delete (int ) ;
 int webvtt_region_ClearCues (TYPE_1__*) ;

__attribute__((used)) static void webvtt_region_Delete( webvtt_region_t *p_region )
{
    text_style_Delete( p_region->p_cssstyle );
    webvtt_region_ClearCues( p_region );
    free( p_region->psz_id );
    free( p_region );
}
