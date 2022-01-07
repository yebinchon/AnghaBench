
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct guard TYPE_1__ ;


typedef int tab ;
struct guard {char* dvb; char* vlc; } ;


 struct guard* bsearch (char const*,TYPE_1__ const*,int,int,int ) ;
 int cmp ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static const char *ParseGuard(const char *str)
{
     static const struct guard
     {
         char dvb[7];
         char vlc[7];
     } tab[] = {
         { "19_128", "19/128" }, { "19_256", "19/256" }, { "1_128", "1/128" },
         { "1_16", "1/16" }, { "1_32", "1/32" }, { "1_4", "1/4" },
         { "1_8", "1/8" }, { "AUTO", "" },
     };

     if (str == ((void*)0) || strncmp(str, "GUARD_INTERVAL_", 15))
         return ((void*)0);
     str += 15;

     const struct guard *g = bsearch(str, tab, sizeof (tab) / sizeof(tab[0]),
                                     sizeof (tab[0]), cmp);
     return (g != ((void*)0)) ? g->vlc : ((void*)0);
}
