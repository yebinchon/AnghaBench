
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ adns_status ;


 char* adns_strerror (scalar_t__) ;
 int fprintf (int ,char*,char*,char*,char*,char*) ;
 int stdout ;

__attribute__((used)) static void dumptype(adns_status ri, const char *rrtn, const char *fmtn) {
  fprintf(stdout, "%s(%s)%s%s",
   ri ? "?" : rrtn, ri ? "?" : fmtn ? fmtn : "-",
   ri ? " " : "", ri ? adns_strerror(ri) : "");
}
