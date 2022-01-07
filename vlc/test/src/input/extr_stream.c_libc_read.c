
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f; } ;
struct reader {TYPE_1__ u; } ;
typedef int ssize_t ;


 int fread (void*,int,size_t,int ) ;

__attribute__((used)) static ssize_t
libc_read( struct reader *p_reader, void *p_buf, size_t i_len )
{
    return fread( p_buf, 1, i_len , p_reader->u.f );
}
