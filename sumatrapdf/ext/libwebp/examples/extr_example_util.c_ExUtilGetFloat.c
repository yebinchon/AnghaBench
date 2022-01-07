
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const* const) ;
 int stderr ;
 scalar_t__ strtod (char const* const,char**) ;

float ExUtilGetFloat(const char* const v, int* const error) {
  char* end = ((void*)0);
  const float f = (v != ((void*)0)) ? (float)strtod(v, &end) : 0.f;
  if (end == v && error != ((void*)0) && !*error) {
    *error = 1;
    fprintf(stderr, "Error! '%s' is not a floating point number.\n",
            (v != ((void*)0)) ? v : "(null)");
  }
  return f;
}
