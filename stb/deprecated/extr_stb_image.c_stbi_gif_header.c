
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char flags; char bgindex; char ratio; int transparent; int pal; void* h; void* w; } ;
typedef TYPE_1__ stbi_gif ;
typedef char stbi__uint8 ;
typedef int stbi ;


 int e (char*,char*) ;
 char* failure_reason ;
 void* get16le (int *) ;
 char get8 (int *) ;
 char get8u (int *) ;
 int stbi_gif_parse_colortable (int *,int ,int,int) ;

__attribute__((used)) static int stbi_gif_header(stbi *s, stbi_gif *g, int *comp, int is_info)
{
   stbi__uint8 version;
   if (get8(s) != 'G' || get8(s) != 'I' || get8(s) != 'F' || get8(s) != '8')
      return e("not GIF", "Corrupt GIF");

   version = get8u(s);
   if (version != '7' && version != '9') return e("not GIF", "Corrupt GIF");
   if (get8(s) != 'a') return e("not GIF", "Corrupt GIF");

   failure_reason = "";
   g->w = get16le(s);
   g->h = get16le(s);
   g->flags = get8(s);
   g->bgindex = get8(s);
   g->ratio = get8(s);
   g->transparent = -1;

   if (comp != 0) *comp = 4;

   if (is_info) return 1;

   if (g->flags & 0x80)
      stbi_gif_parse_colortable(s,g->pal, 2 << (g->flags & 7), -1);

   return 1;
}
