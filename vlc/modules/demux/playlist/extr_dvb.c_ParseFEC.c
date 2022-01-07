
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct fec TYPE_1__ ;


typedef int tab ;
struct fec {char* dvb; char* vlc; } ;


 struct fec* bsearch (char const*,TYPE_1__ const*,int,int,int ) ;
 int cmp ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static const char *ParseFEC(const char *str)
{
     static const struct fec
     {
         char dvb[5];
         char vlc[5];
     } tab[] = {
         { "1_2", "1/2" }, { "2_3", "2/3" }, { "3_4", "3/4" },
         { "4_5", "4/5" }, { "5_6", "5/6" }, { "6_7", "6/7" },
         { "7_8", "7/8" }, { "8_9", "8/9" }, { "9_10", "9/10" },
         { "AUTO", "" }, { "NONE", "0" }
     };

     if (str == ((void*)0) || strncmp(str, "FEC_", 4))
         return ((void*)0);
     str += 4;

     const struct fec *f = bsearch(str, tab, sizeof (tab) / sizeof(tab[0]),
                                   sizeof (tab[0]), cmp);
     return (f != ((void*)0)) ? f->vlc : ((void*)0);
}
