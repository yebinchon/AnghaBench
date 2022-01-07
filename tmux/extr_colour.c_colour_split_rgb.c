
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



void
colour_split_rgb(int c, u_char *r, u_char *g, u_char *b)
{
 *r = (c >> 16) & 0xff;
 *g = (c >> 8) & 0xff;
 *b = c & 0xff;
}
