
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addcchar (int ) ;
 int cbuffer ;
 char* xstrdup (int ) ;

__attribute__((used)) static char *get_buffered_cstring(void)
{
 addcchar(0);
 return xstrdup(cbuffer);
}
