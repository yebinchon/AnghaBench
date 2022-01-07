
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_line; scalar_t__ i_line_count; char** line; } ;
typedef TYPE_1__ text_t ;



__attribute__((used)) static char *TextGetLine( text_t *txt )
{
    if( txt->i_line >= txt->i_line_count )
        return( ((void*)0) );

    return txt->line[txt->i_line++];
}
