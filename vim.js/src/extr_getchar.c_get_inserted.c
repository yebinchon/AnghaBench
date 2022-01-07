
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FALSE ;
 int * get_buffcont (int *,int ) ;
 int redobuff ;

char_u *
get_inserted()
{
    return get_buffcont(&redobuff, FALSE);
}
