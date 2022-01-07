
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;


 int AUDIO_ES ;
 int vlc_fourcc_GetCodec (int ,int ) ;

unsigned int aout_BitsPerSample( vlc_fourcc_t i_format )
{
    switch( vlc_fourcc_GetCodec( AUDIO_ES, i_format ) )
    {
    case 128:
    case 135:
    case 149:
    case 144:
        return 8;

    case 133:
    case 142:
    case 134:
    case 143:
        return 16;

    case 131:
    case 139:
    case 132:
    case 141:
        return 24;

    case 138:
    case 140:
    case 129:
    case 130:
    case 136:
    case 137:
    case 147:
    case 148:
        return 32;

    case 145:
    case 146:
        return 64;

    default:


        return 0;
    }
}
