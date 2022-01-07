
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE (char*) ;
 scalar_t__ TRACE_ON (int ) ;



 int uniscribe ;

__attribute__((used)) static void debug_output_breaks(const short* breaks, int count)
{
    if (TRACE_ON(uniscribe))
    {
        int i;
        TRACE("[");
        for (i = 0; i < count && i < 200; i++)
        {
            switch (breaks[i])
            {
                case 128: TRACE("x"); break;
                case 130: TRACE("!"); break;
                case 129: TRACE("+"); break;
                default: TRACE("*");
            }
        }
        if (i == 200)
            TRACE("...");
        TRACE("]\n");
    }
}
