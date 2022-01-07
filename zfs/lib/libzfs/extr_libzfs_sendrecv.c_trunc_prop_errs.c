
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
trunc_prop_errs(int truncated)
{
 ASSERT(truncated != 0);

 if (truncated == 1)
  (void) fprintf(stderr, dgettext(TEXT_DOMAIN,
      "1 more property could not be set\n"));
 else
  (void) fprintf(stderr, dgettext(TEXT_DOMAIN,
      "%d more properties could not be set\n"), truncated);
}
