
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned int ODGetBytes (unsigned int*,int const**,int) ;
 char* strndup (char*,unsigned int) ;

__attribute__((used)) static char* ODGetURL( unsigned *pi_data, const uint8_t **pp_data )
{
    unsigned len = ODGetBytes( pi_data, pp_data, 1 );
    if (len > *pi_data)
        len = *pi_data;
    char *url = strndup( (char*)*pp_data, len );
    *pp_data += len;
    *pi_data -= len;
    return url;
}
