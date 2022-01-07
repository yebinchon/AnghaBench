
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wctype_t ;


 int iswctype (int ,int ) ;

int is_wctype(wint_t wc, wctype_t wctypeFlags)
{
   return iswctype(wc, wctypeFlags);
}
