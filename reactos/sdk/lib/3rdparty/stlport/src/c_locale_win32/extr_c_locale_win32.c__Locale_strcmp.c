
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ lc; int cp; } ;
typedef TYPE_2__ _Locale_collate_t ;


 int CSTR_EQUAL ;
 int CSTR_LESS_THAN ;
 int _Locale_strcmp_auxA (TYPE_2__*,char const*,size_t,char const*,size_t) ;
 char* __ConvertToCP (scalar_t__,scalar_t__,char const*,size_t,size_t*) ;
 scalar_t__ __GetDefaultCP (int ) ;
 scalar_t__ atoi (int ) ;
 int free (char*) ;

int _Locale_strcmp(_Locale_collate_t* lcol,
                   const char* s1, size_t n1,
                   const char* s2, size_t n2) {
  int result;
  if (__GetDefaultCP(lcol->lc.id) == atoi(lcol->cp)) {
    result = _Locale_strcmp_auxA(lcol, s1, n1, s2, n2);
  }
  else {
    char *buf1, *buf2;
    size_t size1, size2;
    buf1 = __ConvertToCP(atoi(lcol->cp), __GetDefaultCP(lcol->lc.id), s1, n1, &size1);
    buf2 = __ConvertToCP(atoi(lcol->cp), __GetDefaultCP(lcol->lc.id), s2, n2, &size2);

    result = _Locale_strcmp_auxA(lcol, buf1, size1, buf2, size2);
    free(buf1); free(buf2);
  }
  return (result == CSTR_EQUAL) ? 0 : (result == CSTR_LESS_THAN) ? -1 : 1;
}
