
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_buff (int *) ;
 int old_redobuff ;
 int redobuff ;
 scalar_t__ save_level ;
 int save_old_redobuff ;
 int save_redobuff ;

void
restoreRedobuff()
{
    if (--save_level == 0)
    {
 free_buff(&redobuff);
 redobuff = save_redobuff;
 free_buff(&old_redobuff);
 old_redobuff = save_old_redobuff;
    }
}
