
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int (* getbyte ) (TYPE_1__*) ;} ;
typedef TYPE_1__ stbfile ;


 unsigned int stub1 (TYPE_1__*) ;

unsigned int stb_getc(stbfile *f) { return f->getbyte(f); }
