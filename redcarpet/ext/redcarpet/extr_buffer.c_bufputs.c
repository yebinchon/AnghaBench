
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int bufput (struct buf*,char const*,int ) ;
 int strlen (char const*) ;

void
bufputs(struct buf *buf, const char *str)
{
 bufput(buf, str, strlen(str));
}
