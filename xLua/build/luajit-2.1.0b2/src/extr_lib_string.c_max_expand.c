
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_4__ {char const* src_end; } ;
typedef TYPE_1__ MatchState ;


 char* match (TYPE_1__*,char const*,char const*) ;
 scalar_t__ singlematch (int ,char const*,char const*) ;
 int uchar (char const) ;

__attribute__((used)) static const char *max_expand(MatchState *ms, const char *s,
         const char *p, const char *ep)
{
  ptrdiff_t i = 0;
  while ((s+i)<ms->src_end && singlematch(uchar(*(s+i)), p, ep))
    i++;

  while (i>=0) {
    const char *res = match(ms, (s+i), ep+1);
    if (res) return res;
    i--;
  }
  return ((void*)0);
}
