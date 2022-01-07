
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;


 int ARRAY_SIZE (struct view**) ;
 struct view** views ;

struct view *
get_view(int i)
{
 return 0 <= i && i < ARRAY_SIZE(views) ? views[i] : ((void*)0);
}
