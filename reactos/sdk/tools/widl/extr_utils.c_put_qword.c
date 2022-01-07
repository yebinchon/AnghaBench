
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ byte_swapped ;
 int put_dword (unsigned int) ;

void put_qword( unsigned int val )
{
    if (byte_swapped)
    {
        put_dword( 0 );
        put_dword( val );
    }
    else
    {
        put_dword( val );
        put_dword( 0 );
    }
}
