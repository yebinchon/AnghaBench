
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ StkId ;


 int memcpy (char*,int ,size_t) ;
 int svalue (scalar_t__) ;
 size_t vslen (scalar_t__) ;

__attribute__((used)) static void copy2buff (StkId top, int n, char *buff) {
  size_t tl = 0;
  do {
    size_t l = vslen(top - n);
    memcpy(buff + tl, svalue(top - n), l * sizeof(char));
    tl += l;
  } while (--n > 0);
}
