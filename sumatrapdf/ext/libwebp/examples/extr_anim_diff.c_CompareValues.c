
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int fprintf (int ,char*,char const*,scalar_t__,scalar_t__) ;
 int stderr ;

__attribute__((used)) static int CompareValues(uint32_t a, uint32_t b, const char* output_str) {
  if (a != b) {
    fprintf(stderr, "%s: %d vs %d\n", output_str, a, b);
    return 0;
  }
  return 1;
}
