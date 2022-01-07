
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int currentpage ;
 int fz_make_location (int,int) ;
 scalar_t__ search_hit_count ;
 int search_hit_page ;
 int search_page ;
 scalar_t__ showsearch ;

__attribute__((used)) static void clear_search(void)
{
 showsearch = 0;
 search_page = currentpage;
 search_hit_page = fz_make_location(-1, -1);
 search_hit_count = 0;
}
