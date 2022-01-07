
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* putbyte ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ stbfile ;


 int stub1 (TYPE_1__*,int) ;

int stb_putc(stbfile *f, int ch) { return f->putbyte(f, ch); }
