
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void MpgaXingSkip( const uint8_t **pp_xing, int *pi_xing, int i_count )
{
    if(i_count > *pi_xing )
        i_count = *pi_xing;

    (*pp_xing) += i_count;
    (*pi_xing) -= i_count;
}
