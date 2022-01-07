
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Locale_collate_t ;


 int free (int *) ;

void _Locale_collate_destroy(_Locale_collate_t* lcol) {
  if (!lcol) return;

  free(lcol);
}
