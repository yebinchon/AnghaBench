
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct style {int dummy; } ;


 int style_default ;
 int style_equal (struct style*,int *) ;

int
style_is_default(struct style *sy)
{
 return (style_equal(sy, &style_default));
}
