
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int stb__clex_iswhite(int x)
{
   return x == ' ' || x == '\t' || x == '\r' || x == '\n' || x == '\f';
}
