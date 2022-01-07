
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 int fprintf (int ,char*,char const* const) ;
 int stderr ;
 scalar_t__ strtoul (char const* const,char**,int) ;

uint32_t ExUtilGetUInt(const char* const v, int base, int* const error) {
  char* end = ((void*)0);
  const uint32_t n = (v != ((void*)0)) ? (uint32_t)strtoul(v, &end, base) : 0u;
  if (end == v && error != ((void*)0) && !*error) {
    *error = 1;
    fprintf(stderr, "Error! '%s' is not an integer.\n",
            (v != ((void*)0)) ? v : "(null)");
  }
  return n;
}
