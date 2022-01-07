
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyfd {int fd; } ;


 int write (int ,unsigned char*,int) ;

__attribute__((used)) static void
ttywrite(struct ttyfd *tf, unsigned char wb)
{

 (void)write(tf->fd, &wb, 1);
}
