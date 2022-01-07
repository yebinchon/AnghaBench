
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_tree {int dummy; } ;


 char* format_expand1 (struct format_tree*,char const*,int) ;

char *
format_expand_time(struct format_tree *ft, const char *fmt)
{
 return (format_expand1(ft, fmt, 1));
}
