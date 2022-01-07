
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outportb (int,unsigned char) ;

void write_vga_reg(int port, unsigned char reg, unsigned char value)
{
 outportb(port,reg);
 outportb(port+1,value);
}
