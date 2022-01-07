
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ r ;
typedef scalar_t__ g ;
typedef scalar_t__ b ;


 int COLOUR_FLAG_RGB ;

int
colour_join_rgb(u_char r, u_char g, u_char b)
{
 return ((((int)((r) & 0xff)) << 16) |
     (((int)((g) & 0xff)) << 8) |
     (((int)((b) & 0xff))) | COLOUR_FLAG_RGB);
}
