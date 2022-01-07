
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * FindReferenceCode (int ,int const*,int const*) ;

__attribute__((used)) static const uint8_t *CountReference( unsigned int *pi_count, uint8_t i_code,
                                      const uint8_t *p_parser,
                                      const uint8_t *p_end )
{
    const uint8_t *p_tmp = FindReferenceCode( i_code, p_parser, p_end );
    if ( p_tmp == ((void*)0) )
    {
        *pi_count += p_end - p_parser;
        return ((void*)0);
    }
    *pi_count += p_tmp - p_parser;
    return p_tmp;
}
