
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int encoder_t ;


 int VLC_MSG_DBG ;
 int VLC_MSG_ERR ;
 int VLC_MSG_INFO ;
 int VLC_MSG_WARN ;




 int msg_GenericVa (int *,int,char const*,int ) ;

__attribute__((used)) static void x264_log( void *data, int i_level, const char *psz, va_list args)
{
    encoder_t *p_enc = (encoder_t *)data;

    switch( i_level )
    {
        case 130:
            i_level = VLC_MSG_ERR;
            break;
        case 128:
            i_level = VLC_MSG_WARN;
            break;
        case 129:
            i_level = VLC_MSG_INFO;
            break;
        case 131:
        default:
            i_level = VLC_MSG_DBG;
    }

    msg_GenericVa( p_enc, i_level, psz, args );
}
