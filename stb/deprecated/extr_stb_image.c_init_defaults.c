
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* default_distance ;
 int* default_length ;

__attribute__((used)) static void init_defaults(void)
{
   int i;
   for (i=0; i <= 143; ++i) default_length[i] = 8;
   for ( ; i <= 255; ++i) default_length[i] = 9;
   for ( ; i <= 279; ++i) default_length[i] = 7;
   for ( ; i <= 287; ++i) default_length[i] = 8;

   for (i=0; i <= 31; ++i) default_distance[i] = 5;
}
