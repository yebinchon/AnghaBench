
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;
typedef int fstrans_cookie_t ;


 int __zio_execute (int *) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;

void
zio_execute(zio_t *zio)
{
 fstrans_cookie_t cookie;

 cookie = spl_fstrans_mark();
 __zio_execute(zio);
 spl_fstrans_unmark(cookie);
}
