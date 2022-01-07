
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int write (int ,unsigned char*,int) ;

__attribute__((used)) static void
ttywrite(unsigned char wb)
{
 (void) write(STDOUT_FILENO, &wb, 1);
}
