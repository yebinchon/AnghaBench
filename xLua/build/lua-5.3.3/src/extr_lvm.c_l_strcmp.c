
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TString ;


 char* getstr (int const*) ;
 int strcoll (char const*,char const*) ;
 size_t strlen (char const*) ;
 size_t tsslen (int const*) ;

__attribute__((used)) static int l_strcmp (const TString *ls, const TString *rs) {
  const char *l = getstr(ls);
  size_t ll = tsslen(ls);
  const char *r = getstr(rs);
  size_t lr = tsslen(rs);
  for (;;) {
    int temp = strcoll(l, r);
    if (temp != 0)
      return temp;
    else {
      size_t len = strlen(l);
      if (len == lr)
        return (len == ll) ? 0 : 1;
      else if (len == ll)
        return -1;

      len++;
      l += len; ll -= len; r += len; lr -= len;
    }
  }
}
