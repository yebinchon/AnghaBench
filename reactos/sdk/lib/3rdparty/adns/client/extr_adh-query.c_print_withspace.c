
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 int outerr () ;
 scalar_t__ printf (char*,char const*) ;

__attribute__((used)) static void print_withspace(const char *str) {
  if (printf("%s ", str) == EOF) outerr();
}
