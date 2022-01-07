
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_whitespace (char) ;

__attribute__((used)) static void whitespace_substr( char** start,
                               char** end )
{
    while( is_whitespace( **start ) && *start != *end ) {
        (*start)++;
    }

    if( *start == *end )
        return;

    while( is_whitespace(*(*end - 1) ) ) {
        (*end)--;
    }
}
