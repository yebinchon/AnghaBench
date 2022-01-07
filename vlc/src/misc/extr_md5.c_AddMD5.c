
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_s {int dummy; } ;


 int md5_write (struct md5_s*,void const*,size_t) ;

void AddMD5( struct md5_s *restrict h, const void *data, size_t len )
{
    md5_write( h, data, len );
}
