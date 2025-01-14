
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int COLOUR_FLAG_256 ;
 int COLOUR_FLAG_RGB ;
 int colour_split_rgb (int,int *,int *,int *) ;
 int xsnprintf (char*,int,char*,int,...) ;

const char *
colour_tostring(int c)
{
 static char s[32];
 u_char r, g, b;

 if (c & COLOUR_FLAG_RGB) {
  colour_split_rgb(c, &r, &g, &b);
  xsnprintf(s, sizeof s, "#%02x%02x%02x", r, g, b);
  return (s);
 }

 if (c & COLOUR_FLAG_256) {
  xsnprintf(s, sizeof s, "colour%u", c & 0xff);
  return (s);
 }

 switch (c) {
 case 0:
  return ("black");
 case 1:
  return ("red");
 case 2:
  return ("green");
 case 3:
  return ("yellow");
 case 4:
  return ("blue");
 case 5:
  return ("magenta");
 case 6:
  return ("cyan");
 case 7:
  return ("white");
 case 8:
  return ("default");
 case 9:
  return ("terminal");
 case 90:
  return ("brightblack");
 case 91:
  return ("brightred");
 case 92:
  return ("brightgreen");
 case 93:
  return ("brightyellow");
 case 94:
  return ("brightblue");
 case 95:
  return ("brightmagenta");
 case 96:
  return ("brightcyan");
 case 97:
  return ("brightwhite");
 }
 return ("invalid");
}
