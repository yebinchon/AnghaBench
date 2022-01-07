
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_id; int psz_text; int psz_attrs; } ;
typedef TYPE_1__ webvtt_cue_t ;


 int free (int ) ;

__attribute__((used)) static inline void webvtt_cue_Clean( webvtt_cue_t *c )
{
    free( c->psz_attrs );
    free( c->psz_text );
    free( c->psz_id );
}
