
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer; scalar_t__ indata; } ;
typedef TYPE_1__ stbfile ;



__attribute__((used)) static unsigned int stb__btell(stbfile *s) { return (unsigned int) (s->indata - s->buffer); }
