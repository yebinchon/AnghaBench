
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* src_end; } ;
typedef TYPE_1__ MatchState ;


 char* match (TYPE_1__*,char const*,char const*) ;
 scalar_t__ singlematch (int ,char const*,char const*) ;
 int uchar (char const) ;

__attribute__((used)) static const char *min_expand (MatchState *ms, const char *s,
                                 const char *p, const char *ep) {
  for (;;) {
    const char *res = match(ms, s, ep+1);
    if (res != ((void*)0))
      return res;
    else if (s<ms->src_end && singlematch(uchar(*s), p, ep))
      s++;
    else return ((void*)0);
  }
}
