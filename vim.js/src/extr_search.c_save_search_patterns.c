
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pat; } ;


 int last_idx ;
 int no_hlsearch ;
 int save_level ;
 int saved_last_idx ;
 int saved_no_hlsearch ;
 TYPE_1__* saved_spats ;
 TYPE_1__* spats ;
 void* vim_strsave (int *) ;

void
save_search_patterns()
{
    if (save_level++ == 0)
    {
 saved_spats[0] = spats[0];
 if (spats[0].pat != ((void*)0))
     saved_spats[0].pat = vim_strsave(spats[0].pat);
 saved_spats[1] = spats[1];
 if (spats[1].pat != ((void*)0))
     saved_spats[1].pat = vim_strsave(spats[1].pat);
 saved_last_idx = last_idx;



    }
}
