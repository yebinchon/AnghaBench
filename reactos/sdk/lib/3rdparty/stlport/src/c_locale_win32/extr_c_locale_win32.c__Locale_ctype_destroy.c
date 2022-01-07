
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Locale_ctype_t ;


 int free (int *) ;

void _Locale_ctype_destroy(_Locale_ctype_t* ltype) {
  if (!ltype) return;

  free(ltype);
}
