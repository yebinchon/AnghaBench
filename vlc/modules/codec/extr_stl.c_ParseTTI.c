
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int i_justify; int i_accumulating; void* i_end; void* i_start; } ;
typedef TYPE_1__ stl_sg_t ;


 int ClearTeletextStyles (TYPE_1__*) ;
 int GroupApplyStyle (TYPE_1__*,int const) ;
 int GroupParseTeletext (TYPE_1__*,int const) ;
 void* ParseTimeCode (int const*,double) ;
 int STL_TEXTFIELD_SIZE ;
 int const STL_TF_BOXING_OFF ;
 int const STL_TF_CHARCODE1_FIRST ;
 int const STL_TF_CHARCODE1_LAST ;
 int const STL_TF_CHARCODE2_FIRST ;

 int const STL_TF_ITALICS_ON ;

 int const STL_TF_TELETEXT_LAST ;
 size_t STL_TTI_HEADER_SIZE ;
 size_t STL_TTI_SIZE ;
 int TextBufferFlush (TYPE_1__*,int*,int*,char const*) ;

__attribute__((used)) static bool ParseTTI(stl_sg_t *p_group, const uint8_t *p_data, const char *psz_charset, double fps)
{
    uint8_t p_buffer[STL_TEXTFIELD_SIZE];
    uint8_t i_buffer = 0;


    uint8_t ebn = p_data[3];
    if(ebn > 0xef && ebn != 0xff)
        return 0;

    if(p_data[15] != 0x00)
        return 0;

    if(p_data[14] > 0x00)
        p_group->i_justify = p_data[14];



    p_group->i_accumulating = (p_data[4] == 0x01 || p_data[4] == 0x02);

    p_group->i_start = ParseTimeCode( &p_data[5], fps );
    p_group->i_end = ParseTimeCode( &p_data[9], fps );


    for (size_t i = STL_TTI_HEADER_SIZE; i < STL_TTI_SIZE; i++)
    {
        const uint8_t code = p_data[i];
        switch(code)
        {
            case 128:
                p_buffer[i_buffer++] = '\n';
                TextBufferFlush(p_group, p_buffer, &i_buffer, psz_charset);

                ClearTeletextStyles(p_group);
                break;

            case 129:
                TextBufferFlush(p_group, p_buffer, &i_buffer, psz_charset);
                ClearTeletextStyles(p_group);
                return 1;

            default:
                if(code <= STL_TF_TELETEXT_LAST)
                {
                    TextBufferFlush(p_group, p_buffer, &i_buffer, psz_charset);
                    GroupParseTeletext(p_group, code);
                }
                else if((code >= STL_TF_CHARCODE1_FIRST && code <= STL_TF_CHARCODE1_LAST) ||
                    code >= STL_TF_CHARCODE2_FIRST)
                {
                    p_buffer[i_buffer++] = code;
                }
                else if(code >= STL_TF_ITALICS_ON && code <= STL_TF_BOXING_OFF)
                {
                    TextBufferFlush(p_group, p_buffer, &i_buffer, psz_charset);
                    GroupApplyStyle(p_group, code);
                }
                break;
        }
    }

    TextBufferFlush(p_group, p_buffer, &i_buffer, psz_charset);

    return 0;
}
