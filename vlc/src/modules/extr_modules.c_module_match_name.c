
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_score; size_t i_shortcuts; char** pp_shortcuts; } ;
typedef TYPE_1__ module_t ;


 scalar_t__ strncasecmp (char*,char const*,size_t) ;

__attribute__((used)) static bool module_match_name(const module_t *m, const char *name, size_t len)
{

     if (len == 3 && strncasecmp("any", name, len) == 0)
         return m->i_score > 0;

     for (size_t i = 0; i < m->i_shortcuts; i++)
          if (strncasecmp(m->pp_shortcuts[i], name, len) == 0
           && m->pp_shortcuts[i][len] == '\0')
              return 1;

     return 0;
}
