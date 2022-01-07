
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* ft2_errorindex ;
 char const** ft2_errorstrings ;
 unsigned int ft2_num_errors ;

const char *ft2_strerror(unsigned err)
{
    unsigned i;
    for( i=0; i<ft2_num_errors; ++i )
        if( err==ft2_errorindex[i] )
            break;

    return i<ft2_num_errors ? ft2_errorstrings[i] :
           "An error freetype2 neglected to specify";
}
