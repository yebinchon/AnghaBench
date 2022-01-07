
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ function; int psz; } ;
typedef TYPE_1__ vlc_css_term_t ;


 scalar_t__ TYPE_FUNCTION ;
 scalar_t__ TYPE_STRING ;
 int free (int ) ;
 int vlc_css_expression_Delete (scalar_t__) ;

void vlc_css_term_Clean( vlc_css_term_t a )
{
    if( a.type >= TYPE_STRING )
        free( a.psz );

    if( a.type == TYPE_FUNCTION )
    {
        if( a.function )
            vlc_css_expression_Delete( a.function );
    }
}
