
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_s {int dummy; } ;


 int md5_init (struct md5_s*) ;

void InitMD5( struct md5_s *h )
{
    md5_init( h );
}
