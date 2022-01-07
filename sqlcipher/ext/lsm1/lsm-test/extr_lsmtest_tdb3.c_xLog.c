
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 int unused_parameter (int) ;

__attribute__((used)) static void xLog(void *pCtx, int rc, const char *z){
  unused_parameter(rc);

  if( pCtx ) fprintf(stderr, "%s: ", (char *)pCtx);
  fprintf(stderr, "%s\n", z);
  fflush(stderr);
}
