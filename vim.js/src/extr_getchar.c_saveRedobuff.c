
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_10__ {int * b_next; } ;
struct TYPE_12__ {TYPE_2__ bh_first; } ;
struct TYPE_9__ {int * b_next; } ;
struct TYPE_11__ {TYPE_1__ bh_first; } ;


 int FALSE ;
 int add_buff (TYPE_3__*,int *,long) ;
 int * get_buffcont (TYPE_3__*,int ) ;
 TYPE_4__ old_redobuff ;
 TYPE_3__ redobuff ;
 int save_level ;
 TYPE_4__ save_old_redobuff ;
 TYPE_3__ save_redobuff ;
 int vim_free (int *) ;

void
saveRedobuff()
{
    char_u *s;

    if (save_level++ == 0)
    {
 save_redobuff = redobuff;
 redobuff.bh_first.b_next = ((void*)0);
 save_old_redobuff = old_redobuff;
 old_redobuff.bh_first.b_next = ((void*)0);


 s = get_buffcont(&save_redobuff, FALSE);
 if (s != ((void*)0))
 {
     add_buff(&redobuff, s, -1L);
     vim_free(s);
 }
    }
}
