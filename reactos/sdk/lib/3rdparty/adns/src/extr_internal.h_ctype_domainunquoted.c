
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ctype_alpha (int) ;
 scalar_t__ ctype_digit (int) ;
 scalar_t__ strchr (char*,int) ;

__attribute__((used)) static inline int ctype_domainunquoted(int c) {
  return ctype_alpha(c) || ctype_digit(c) || (strchr("-_/+",c) != 0);
}
