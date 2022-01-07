
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_text; } ;
typedef TYPE_1__ text_segment_t ;


 char* strchr (char*,char) ;

__attribute__((used)) static void StripSpacing( text_segment_t *p_segment )
{

    char *p = p_segment->psz_text;
    while( (p = strchr( p, '\n' )) )
        *p = ' ';
}
