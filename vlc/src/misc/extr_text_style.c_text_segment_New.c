
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int psz_text; } ;
typedef TYPE_1__ text_segment_t ;


 TYPE_1__* calloc (int,int) ;
 int strdup (char const*) ;

text_segment_t *text_segment_New( const char *psz_text )
{
    text_segment_t* segment = calloc( 1, sizeof(*segment) );
    if( !segment )
        return ((void*)0);

    if ( psz_text )
        segment->psz_text = strdup( psz_text );

    return segment;
}
