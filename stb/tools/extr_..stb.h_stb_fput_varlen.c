
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int stb__varlen_xform (int) ;
 int stb_fput_varlenu (int *,int ) ;

void stb_fput_varlen(FILE *f, int v) { stb_fput_varlenu(f, stb__varlen_xform(v)); }
