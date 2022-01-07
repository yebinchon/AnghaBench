
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* lexical_function ) (int const) ;
typedef int WCHAR ;


 int TRACE (char*) ;
 scalar_t__ TRACE_ON (int ) ;
 int uniscribe ;

__attribute__((used)) static void debug_output_string(const WCHAR *str, unsigned int char_count, lexical_function f)
{
    int i;
    if (TRACE_ON(uniscribe))
    {
        for (i = 0; i < char_count; ++i)
        {
            switch (f(str[i]))
            {
                case 140: TRACE("C"); break;
                case 132: TRACE("Ra"); break;
                case 130: TRACE("V"); break;
                case 133: TRACE("N"); break;
                case 139: TRACE("H"); break;
                case 128: TRACE("Zwnj"); break;
                case 129: TRACE("Zwj"); break;
                case 136: TRACE("Mp");break;
                case 138: TRACE("Ma");break;
                case 137: TRACE("Mb");break;
                case 135: TRACE("Mm");break;
                case 134: TRACE("Sm"); break;
                case 131: TRACE("Vd"); break;
                case 142: TRACE("A"); break;
                case 141: TRACE("t"); break;
                default:
                    TRACE("X"); break;
            }
        }
        TRACE("\n");
    }
}
