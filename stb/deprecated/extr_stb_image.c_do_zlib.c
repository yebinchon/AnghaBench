
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* zout_start; char* zout; char* zout_end; int z_expandable; } ;
typedef TYPE_1__ zbuf ;


 int parse_zlib (TYPE_1__*,int) ;

__attribute__((used)) static int do_zlib(zbuf *a, char *obuf, int olen, int exp, int parse_header)
{
   a->zout_start = obuf;
   a->zout = obuf;
   a->zout_end = obuf + olen;
   a->z_expandable = exp;

   return parse_zlib(a, parse_header);
}
