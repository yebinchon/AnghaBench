
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char*,int) ;

__attribute__((used)) static inline int ctype_822special(int c) { return strchr("()<>@,;:\\\".[]",c) != 0; }
