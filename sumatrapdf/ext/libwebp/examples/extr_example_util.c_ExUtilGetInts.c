
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExUtilGetInt (char const*,int,int*) ;
 char* strchr (char const*,char) ;

int ExUtilGetInts(const char* v, int base, int max_output, int output[]) {
  int n, error = 0;
  for (n = 0; v != ((void*)0) && n < max_output; ++n) {
    const int value = ExUtilGetInt(v, base, &error);
    if (error) return -1;
    output[n] = value;
    v = strchr(v, ',');
    if (v != ((void*)0)) ++v;
  }
  return n;
}
