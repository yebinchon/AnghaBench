
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRID_ATTR_BLINK ;
 int GRID_ATTR_BRIGHT ;
 int GRID_ATTR_DIM ;
 int GRID_ATTR_HIDDEN ;
 int GRID_ATTR_ITALICS ;
 int GRID_ATTR_OVERLINE ;
 int GRID_ATTR_REVERSE ;
 int GRID_ATTR_STRIKETHROUGH ;
 int GRID_ATTR_UNDERSCORE ;
 int GRID_ATTR_UNDERSCORE_2 ;
 int GRID_ATTR_UNDERSCORE_3 ;
 int GRID_ATTR_UNDERSCORE_4 ;
 int GRID_ATTR_UNDERSCORE_5 ;
 size_t xsnprintf (char*,int,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;

const char *
attributes_tostring(int attr)
{
 static char buf[512];
 size_t len;

 if (attr == 0)
  return ("none");

 len = xsnprintf(buf, sizeof buf, "%s%s%s%s%s%s%s%s%s%s%s%s%s",
     (attr & GRID_ATTR_BRIGHT) ? "bright," : "",
     (attr & GRID_ATTR_DIM) ? "dim," : "",
     (attr & GRID_ATTR_UNDERSCORE) ? "underscore," : "",
     (attr & GRID_ATTR_BLINK)? "blink," : "",
     (attr & GRID_ATTR_REVERSE) ? "reverse," : "",
     (attr & GRID_ATTR_HIDDEN) ? "hidden," : "",
     (attr & GRID_ATTR_ITALICS) ? "italics," : "",
     (attr & GRID_ATTR_STRIKETHROUGH) ? "strikethrough," : "",
     (attr & GRID_ATTR_UNDERSCORE_2) ? "double-underscore," : "",
     (attr & GRID_ATTR_UNDERSCORE_3) ? "curly-underscore," : "",
     (attr & GRID_ATTR_UNDERSCORE_4) ? "dotted-underscore," : "",
     (attr & GRID_ATTR_UNDERSCORE_5) ? "dashed-underscore," : "",
     (attr & GRID_ATTR_OVERLINE) ? "overline," : "");
 if (len > 0)
  buf[len - 1] = '\0';

 return (buf);
}
