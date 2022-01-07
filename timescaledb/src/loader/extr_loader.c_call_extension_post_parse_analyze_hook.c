
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int ParseState ;


 int extension_post_parse_analyze_hook (int *,int *) ;
 scalar_t__ loaded ;

__attribute__((used)) static void
call_extension_post_parse_analyze_hook(ParseState *pstate, Query *query)
{
 if (loaded && extension_post_parse_analyze_hook != ((void*)0))
 {
  extension_post_parse_analyze_hook(pstate, query);
 }
}
