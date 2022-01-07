
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PathMatchSpecA (char const*,char const*) ;

__attribute__((used)) static inline int fnmatch(const char *pattern, const char *string, int flags) {return PathMatchSpecA(string, pattern)?0:1;}
