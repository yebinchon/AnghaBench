
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
gl_tab(char *buf, int offset, int *loc, size_t bufsize)

{
    int i, count, len;

    len = (int) strlen(buf);
    count = 8 - (offset + *loc) % 8;
    for (i=len; i >= *loc; i--)
     if (i+count < (int) bufsize)
  buf[i+count] = buf[i];
    for (i=0; i < count; i++)
     if (*loc+i < (int) bufsize)
  buf[*loc+i] = ' ';
    i = *loc;
    *loc = i + count;
    return i;
}
