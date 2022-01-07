
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,size_t) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static char *
cmd_capture_pane_append(char *buf, size_t *len, char *line, size_t linelen)
{
 buf = xrealloc(buf, *len + linelen + 1);
 memcpy(buf + *len, line, linelen);
 *len += linelen;
 return (buf);
}
