
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {int dummy; } ;


 int window_copy_search (struct window_mode_entry*,int) ;

__attribute__((used)) static int
window_copy_search_down(struct window_mode_entry *wme)
{
 return (window_copy_search(wme, 1));
}
