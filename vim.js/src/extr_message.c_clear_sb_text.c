
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* sb_prev; } ;
typedef TYPE_1__ msgchunk_T ;


 TYPE_1__* last_msgchunk ;
 int vim_free (TYPE_1__*) ;

void
clear_sb_text()
{
    msgchunk_T *mp;

    while (last_msgchunk != ((void*)0))
    {
 mp = last_msgchunk->sb_prev;
 vim_free(last_msgchunk);
 last_msgchunk = mp;
    }
}
