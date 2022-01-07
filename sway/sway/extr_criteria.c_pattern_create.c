
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern {int regex; int match_type; } ;


 int PATTERN_FOCUSED ;
 int PATTERN_PCRE ;
 int SWAY_ERROR ;
 struct pattern* calloc (int,int) ;
 int generate_regex (int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int sway_log (int ,char*) ;

__attribute__((used)) static bool pattern_create(struct pattern **pattern, char *value) {
 *pattern = calloc(1, sizeof(struct pattern));
 if (!*pattern) {
  sway_log(SWAY_ERROR, "Failed to allocate pattern");
 }

 if (strcmp(value, "__focused__") == 0) {
  (*pattern)->match_type = PATTERN_FOCUSED;
 } else {
  (*pattern)->match_type = PATTERN_PCRE;
  if (!generate_regex(&(*pattern)->regex, value)) {
   return 0;
  };
 }
 return 1;
}
