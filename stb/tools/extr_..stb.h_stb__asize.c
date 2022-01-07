
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ stbfile ;


 unsigned int stb_arr_len (int ) ;

__attribute__((used)) static unsigned int stb__asize(stbfile *f) { return stb_arr_len(f->buffer); }
