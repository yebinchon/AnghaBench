
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__varlen_xform (int) ;
 int stb_size_varlenu (int ) ;

int stb_size_varlen(int v) { return stb_size_varlenu(stb__varlen_xform(v)); }
