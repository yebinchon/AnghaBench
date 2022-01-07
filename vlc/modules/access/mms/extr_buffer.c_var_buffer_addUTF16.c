
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_buffer_t ;
typedef int uint16_t ;
typedef int stream_t ;


 int * ToCharset (char*,char const*,size_t*) ;
 int free (int *) ;
 int msg_Err (int *,char*) ;
 int var_buffer_add16 (int *,int ) ;

void var_buffer_addUTF16( stream_t *p_access, var_buffer_t *p_buf, const char *p_str )
{
    uint16_t *p_out;
    size_t i_out;

    if( p_str != ((void*)0) )



        p_out = ToCharset( "UTF-16LE", p_str, &i_out );

    else
        p_out = ((void*)0);
    if( p_out == ((void*)0) )
    {
        msg_Err( p_access, "UTF-16 conversion failed" );
        i_out = 0;
    }

    i_out /= 2;
    for( size_t i = 0; i < i_out; i ++ )
        var_buffer_add16( p_buf, p_out[i] );
    free( p_out );

    var_buffer_add16( p_buf, 0 );
}
