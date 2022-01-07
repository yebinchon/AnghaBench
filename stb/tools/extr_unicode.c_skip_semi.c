
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 char* strchr (char*,char) ;

char *skip_semi(char *s, int count)
{
   while (count) {
      s = strchr(s, ';');
      assert(s != ((void*)0));
      ++s;
      --count;
   }
   return s;
}
