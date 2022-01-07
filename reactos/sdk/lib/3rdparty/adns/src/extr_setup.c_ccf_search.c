
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* adns_state ;
struct TYPE_5__ {int nsearchlist; char** searchlist; } ;


 int errno ;
 int free (char**) ;
 int freesearchlist (TYPE_1__*) ;
 void* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ nextword (char const**,char const**,int*) ;
 int saveerr (TYPE_1__*,int ) ;

__attribute__((used)) static void ccf_search(adns_state ads, const char *fn, int lno, const char *buf) {
  const char *bufp, *word;
  char *newchars, **newptrs, **pp;
  int count, tl, l;

  if (!buf) return;

  bufp= buf;
  count= 0;
  tl= 0;
  while (nextword(&bufp,&word,&l)) { count++; tl += l+1; }

  newptrs= malloc(sizeof(char*)*count); if (!newptrs) { saveerr(ads,errno); return; }
  newchars= malloc(tl); if (!newchars) { saveerr(ads,errno); free(newptrs); return; }

  bufp= buf;
  pp= newptrs;
  while (nextword(&bufp,&word,&l)) {
    *pp++= newchars;
    memcpy(newchars,word,l);
    newchars += l;
    *newchars++ = 0;
  }

  freesearchlist(ads);
  ads->nsearchlist= count;
  ads->searchlist= newptrs;
}
