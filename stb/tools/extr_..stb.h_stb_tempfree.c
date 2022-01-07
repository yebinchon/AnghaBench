
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void stb_tempfree(void *b, void *p)
{
   if (p != b)
      free(p);
}
