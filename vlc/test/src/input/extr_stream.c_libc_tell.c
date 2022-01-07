
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long uint64_t ;
struct TYPE_2__ {int f; } ;
struct reader {TYPE_1__ u; } ;


 int assert (int) ;
 long ftell (int ) ;

__attribute__((used)) static uint64_t
libc_tell( struct reader *p_reader )
{
    long i_ret = ftell( p_reader->u.f );
    assert( i_ret >= 0 );
    return i_ret;
}
