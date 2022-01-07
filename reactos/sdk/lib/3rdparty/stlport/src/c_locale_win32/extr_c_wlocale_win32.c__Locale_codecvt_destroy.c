
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Locale_codecvt_t ;


 int free (int *) ;

void _Locale_codecvt_destroy(_Locale_codecvt_t* lcodecvt) {
  if (!lcodecvt) return;

  free(lcodecvt);
}
