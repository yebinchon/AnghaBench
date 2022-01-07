
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int sscanf (char const*,char*,int*,int*,int*,int*) ;

__attribute__((used)) static int ParseBgcolorArgs(const char* args, uint32_t* const bgcolor) {
  uint32_t a, r, g, b;
  if (sscanf(args, "%u,%u,%u,%u", &a, &r, &g, &b) != 4) return 0;
  if (a >= 256 || r >= 256 || g >= 256 || b >= 256) return 0;
  *bgcolor = (a << 24) | (r << 16) | (g << 8) | (b << 0);
  return 1;
}
