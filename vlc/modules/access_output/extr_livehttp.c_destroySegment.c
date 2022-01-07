
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_key_uri; struct TYPE_4__* psz_uri; struct TYPE_4__* psz_duration; struct TYPE_4__* psz_filename; } ;
typedef TYPE_1__ output_segment_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void destroySegment( output_segment_t *segment )
{
    free( segment->psz_filename );
    free( segment->psz_duration );
    free( segment->psz_uri );
    free( segment->psz_key_uri );
    free( segment );
}
