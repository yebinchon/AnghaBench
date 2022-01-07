
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int cpu_count () ;
 char* getenv (char*) ;

__attribute__((used)) static int
worker_count()
{
  char *e = getenv("STRM_WORKER_MAX");
  int n;

  if (e) {
    n = atoi(e);
    if (n > 0) return n;
  }
  return cpu_count();
}
