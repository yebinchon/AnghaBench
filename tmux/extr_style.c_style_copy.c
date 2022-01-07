
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct style {int dummy; } ;


 int memcpy (struct style*,struct style*,int) ;

void
style_copy(struct style *dst, struct style *src)
{
 memcpy(dst, src, sizeof *dst);
}
