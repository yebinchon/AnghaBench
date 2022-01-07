
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pointer_size ;
 int put_dword (unsigned int) ;
 int put_qword (unsigned int) ;

void put_pword( unsigned int val )
{
    if (pointer_size == 8) put_qword( val );
    else put_dword( val );
}
