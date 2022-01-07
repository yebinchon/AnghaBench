
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configcommandinfo {int (* fn ) (int ,char const*,int,char*) ;scalar_t__ name; } ;
typedef int linebuf ;
typedef int getline_ctx ;
typedef int adns_state ;


 int adns__diag (int ,int,int ,char*,char const*,int,int,char*) ;
 struct configcommandinfo* configcommandinfos ;
 scalar_t__ ctype_whitespace (char) ;
 int memcmp (scalar_t__,char*,int) ;
 scalar_t__ strlen (scalar_t__) ;
 int stub1 (int ,char const*,int,char*) ;

__attribute__((used)) static void readconfiggeneric(adns_state ads, const char *filename,
         int (*getline)(adns_state ads, getline_ctx*,
          const char *filename, int lno,
          char *buf, int buflen),




         getline_ctx gl_ctx) {
  char linebuf[2000], *p, *q;
  int lno, l, dirl;
  const struct configcommandinfo *ccip;

  for (lno=1;
       (l= getline(ads,&gl_ctx, filename,lno, linebuf,sizeof(linebuf))) != -1;
       lno++) {
    if (l == -2) continue;
    while (l>0 && ctype_whitespace(linebuf[l-1])) l--;
    linebuf[l]= 0;
    p= linebuf;
    while (ctype_whitespace(*p)) p++;
    if (*p == '#' || !*p) continue;
    q= p;
    while (*q && !ctype_whitespace(*q)) q++;
    dirl= q-p;
    for (ccip=configcommandinfos;
  ccip->name && !((int)strlen(ccip->name)==dirl && !memcmp(ccip->name,p,q-p));
  ccip++);
    if (!ccip->name) {
      adns__diag(ads,-1,0,"%s:%d: unknown configuration directive `%.*s'",
   filename,lno,q-p,p);
      continue;
    }
    while (ctype_whitespace(*q)) q++;
    ccip->fn(ads,filename,lno,q);
  }
}
