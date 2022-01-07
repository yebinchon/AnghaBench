
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int dx; int y; } ;
typedef TYPE_1__ segment ;


 scalar_t__ printf (char*,...) ;
 int stb_arr_len (TYPE_1__*) ;

void print_segments(segment *s)
{
   int i, hpos;
   printf("   ");
   hpos = 4;
   for (i=0; i < stb_arr_len(s); ++i) {

      unsigned char seg = s[i].len + s[i].dx*8 + s[i].y*16;
      hpos += printf("%d,", seg);
      if (hpos > 72 && i+1 < stb_arr_len(s)) {
         hpos = 4;
         printf("\n    ");
      }
   }
   printf("\n");
}
