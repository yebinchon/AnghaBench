
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strspn (char const*,char const*) ;

__attribute__((used)) static int consistsof(const char *string, const char *accept) {
  return strspn(string,accept) == strlen(string);
}
