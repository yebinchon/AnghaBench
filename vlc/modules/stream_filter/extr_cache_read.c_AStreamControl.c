
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {int s; } ;
typedef TYPE_1__ stream_t ;


 int AStreamControlReset (TYPE_1__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_1__*,char*,int) ;
 int vlc_stream_vaControl (int ,int,int ) ;

__attribute__((used)) static int AStreamControl(stream_t *s, int i_query, va_list args)
{
    switch(i_query)
    {
        case 144:
        case 146:
        case 145:
        case 147:
        case 137:
        case 140:
        case 134:
        case 135:
        case 139:
        case 142:
        case 143:
        case 138:
        case 136:
        case 133:
        case 131:
        case 132:
        case 141:
            return vlc_stream_vaControl(s->s, i_query, args);

        case 128:
        case 129:
        {
            int ret = vlc_stream_vaControl(s->s, i_query, args);
            if (ret == VLC_SUCCESS)
                AStreamControlReset(s);
            return ret;
        }

        case 130:
        default:
            msg_Err(s, "invalid vlc_stream_vaControl query=0x%x", i_query);
            return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
