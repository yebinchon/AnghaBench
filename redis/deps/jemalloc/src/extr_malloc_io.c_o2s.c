
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 char* u2s (int ,int,int,char*,size_t*) ;

__attribute__((used)) static char *
o2s(uintmax_t x, bool alt_form, char *s, size_t *slen_p) {
 s = u2s(x, 8, 0, s, slen_p);
 if (alt_form && *s != '0') {
  s--;
  (*slen_p)++;
  *s = '0';
 }
 return s;
}
