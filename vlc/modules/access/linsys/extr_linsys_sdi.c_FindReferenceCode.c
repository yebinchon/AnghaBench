
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static const uint8_t *FindReferenceCode( uint8_t i_code,
                                         const uint8_t *p_parser,
                                         const uint8_t *p_end )
{
    while ( p_parser <= p_end - 5 )
    {
        if ( p_parser[0] == 0xff && p_parser[1] == 0x3 && p_parser[2] == 0x0
              && p_parser[3] == 0x0 && p_parser[4] == i_code )
            return p_parser;
        p_parser += 5;
    }

    return ((void*)0);
}
