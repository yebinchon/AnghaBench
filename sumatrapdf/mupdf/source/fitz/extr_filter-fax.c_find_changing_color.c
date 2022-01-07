
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_changing (unsigned char const*,int,int) ;
 int getbit (unsigned char const*,int) ;

__attribute__((used)) static inline int
find_changing_color(const unsigned char *line, int x, int w, int color)
{
 if (!line || x >= w)
  return w;

 x = find_changing(line, (x > 0 || !color) ? x : -1, w);

 if (x < w && getbit(line, x) != color)
  x = find_changing(line, x, w);

 return x;
}
