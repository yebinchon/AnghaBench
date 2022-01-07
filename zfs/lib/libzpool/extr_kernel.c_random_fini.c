
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int random_fd ;
 int urandom_fd ;

void
random_fini(void)
{
 close(random_fd);
 close(urandom_fd);

 random_fd = -1;
 urandom_fd = -1;
}
