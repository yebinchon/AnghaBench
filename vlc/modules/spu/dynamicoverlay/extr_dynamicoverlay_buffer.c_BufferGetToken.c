
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* p_begin; int i_length; } ;
typedef TYPE_1__ buffer_t ;


 scalar_t__ isspace (unsigned char) ;

char *BufferGetToken( buffer_t *p_buffer )
{
    char *p_char = p_buffer->p_begin;

    while( isspace( (unsigned char)p_char[0] ) || p_char[0] == '\0' )
    {
        if( p_char <= (p_buffer->p_begin + p_buffer->i_length) )
            p_char++;
        else
            return ((void*)0);
    }
    return p_char;
}
