
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inportb (int) ;
 int outportb (int,int) ;

unsigned char read_vga_reg(int port, int reg)
{
  outportb(port,reg);
  return(inportb(port+1));
}
