
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UTF8PROC_CATEGORY_LU ;
 int utf8_string_contains (char const*,int ) ;

bool
utf8_string_contains_uppercase(const char *search)
{
 return utf8_string_contains(search, UTF8PROC_CATEGORY_LU);
}
