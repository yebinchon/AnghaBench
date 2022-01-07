
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int workshop_get_font_height () ;

void
adjust_sign_name(char *filename)
{
 char *s;
 static int fontSize = -1;

 if (fontSize == -1)
  fontSize = workshop_get_font_height();
 if (fontSize == 0)
  return;
 if (filename[0] == '-')
  return;







 s = filename+strlen(filename)-5;
 if (fontSize <= 11)
  strcpy(s, "2.xpm");
 else if (fontSize <= 15)
  strcpy(s, "1.xpm");
 else
  strcpy(s, ".xpm");
}
