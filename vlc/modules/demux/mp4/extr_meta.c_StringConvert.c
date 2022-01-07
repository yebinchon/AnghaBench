
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e_wellknowntype; int i_blob; int p_blob; } ;
typedef TYPE_1__ MP4_Box_data_data_t ;







 char* FromCharset (char*,int ,int ) ;

__attribute__((used)) inline static char * StringConvert( const MP4_Box_data_data_t *p_data )
{
    if ( !p_data || !p_data->i_blob )
        return ((void*)0);

    switch( p_data->e_wellknowntype )
    {
    case 129:
    case 128:
        return FromCharset( "UTF-8", p_data->p_blob, p_data->i_blob );
    case 131:
    case 130:
        return FromCharset( "UTF-16BE", p_data->p_blob, p_data->i_blob );
    case 132:
        return FromCharset( "SHIFT-JIS", p_data->p_blob, p_data->i_blob );
    default:
        return ((void*)0);
    }
}
