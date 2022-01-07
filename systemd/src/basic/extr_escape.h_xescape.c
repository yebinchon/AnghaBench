
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE_MAX ;
 char* xescape_full (char const*,char const*,int ,int) ;

__attribute__((used)) static inline char *xescape(const char *s, const char *bad) {
        return xescape_full(s, bad, SIZE_MAX, 0);
}
