
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int f; } ;
struct reader {TYPE_1__ u; } ;


 int SEEK_SET ;
 int fseek (int ,long,int ) ;

__attribute__((used)) static int
libc_seek( struct reader *p_reader, uint64_t i_offset )
{
    return fseek( p_reader->u.f, (long) i_offset, SEEK_SET );
}
