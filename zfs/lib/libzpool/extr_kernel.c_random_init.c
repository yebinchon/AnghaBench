
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int VERIFY (int) ;
 int open (int ,int ) ;
 int random_fd ;
 int random_path ;
 int urandom_fd ;
 int urandom_path ;

void
random_init(void)
{
 VERIFY((random_fd = open(random_path, O_RDONLY)) != -1);
 VERIFY((urandom_fd = open(urandom_path, O_RDONLY)) != -1);
}
