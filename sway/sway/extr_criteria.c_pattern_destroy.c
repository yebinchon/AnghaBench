
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern {scalar_t__ regex; } ;


 int free (struct pattern*) ;
 int pcre_free (scalar_t__) ;

__attribute__((used)) static void pattern_destroy(struct pattern *pattern) {
 if (pattern) {
  if (pattern->regex) {
   pcre_free(pattern->regex);
  }
  free(pattern);
 }
}
