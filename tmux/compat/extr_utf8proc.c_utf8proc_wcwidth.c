
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int UTF8PROC_CATEGORY_CO ;
 int utf8proc_category (int ) ;
 int utf8proc_charwidth (int ) ;

int
utf8proc_wcwidth(wchar_t wc)
{
 int cat;

 cat = utf8proc_category(wc);
 if (cat == UTF8PROC_CATEGORY_CO) {




  return (1);
 }
 return (utf8proc_charwidth(wc));
}
