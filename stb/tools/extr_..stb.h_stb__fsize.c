
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; } ;
typedef TYPE_1__ stbfile ;


 scalar_t__ stb_filelen (int ) ;

__attribute__((used)) static unsigned int stb__fsize(stbfile *f) { return (unsigned int) stb_filelen(f->f); }
