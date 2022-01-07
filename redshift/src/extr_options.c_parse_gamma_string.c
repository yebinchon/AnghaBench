
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float atof (char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
parse_gamma_string(const char *str, float gamma[])
{
 char *s = strchr(str, ':');
 if (s == ((void*)0)) {

  float g = atof(str);
  gamma[0] = gamma[1] = gamma[2] = g;
 } else {

  *(s++) = '\0';
  char *g_s = s;
  s = strchr(s, ':');
  if (s == ((void*)0)) return -1;

  *(s++) = '\0';
  gamma[0] = atof(str);
  gamma[1] = atof(g_s);
  gamma[2] = atof(s);
 }

 return 0;
}
