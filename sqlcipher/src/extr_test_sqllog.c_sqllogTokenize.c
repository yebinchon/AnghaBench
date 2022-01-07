
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sqllog_isspace (char const) ;

__attribute__((used)) static void sqllogTokenize(const char *z, const char **pz, int *pn){
  const char *p = z;
  int n;


  while( sqllog_isspace(*p) ){
    p++;
  }


  *pz = p;
  n = 0;
  while( (p[n]>='a' && p[n]<='z') || (p[n]>='A' && p[n]<='Z') ) n++;
  *pn = n;
}
