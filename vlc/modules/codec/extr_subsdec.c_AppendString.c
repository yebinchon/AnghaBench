
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_text; } ;
typedef TYPE_1__ text_segment_t ;


 scalar_t__ asprintf (char**,char*,char*,char const*) ;
 int free (char*) ;

__attribute__((used)) static bool AppendString( text_segment_t* p_segment, const char* psz_str )
{
    char* tmp;
    if ( asprintf( &tmp, "%s%s", p_segment->psz_text ? p_segment->psz_text : "", psz_str ) < 0 )
        return 0;
    free( p_segment->psz_text );
    p_segment->psz_text = tmp;
    return 1;
}
