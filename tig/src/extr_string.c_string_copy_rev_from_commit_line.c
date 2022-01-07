
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRING_SIZE (char*) ;
 int string_copy_rev (char*,char const*) ;

void
string_copy_rev_from_commit_line(char *dst, const char *src)
{
 string_copy_rev(dst, src + STRING_SIZE("commit "));
}
