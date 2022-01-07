
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct criteria {char* raw; int window_type; } ;


 int ATOM_LAST ;
 int SWAY_DEBUG ;
 void* calloc (int,int) ;
 int criteria_destroy (struct criteria*) ;
 scalar_t__ criteria_is_empty (struct criteria*) ;
 char* error ;
 int free (char*) ;
 int parse_token (struct criteria*,char*,char*) ;
 int skip_spaces (char**) ;
 char* strdup (char*) ;
 int strncpy (char*,char*,int) ;
 int sway_log (int ,char*,char*,char*) ;
 int unescape (char*) ;

struct criteria *criteria_parse(char *raw, char **error_arg) {
 *error_arg = ((void*)0);
 error = ((void*)0);

 char *head = raw;
 skip_spaces(&head);
 if (*head != '[') {
  *error_arg = strdup("No criteria");
  return ((void*)0);
 }
 ++head;

 struct criteria *criteria = calloc(1, sizeof(struct criteria));



 char *name = ((void*)0), *value = ((void*)0);
 bool in_quotes = 0;

 while (*head && *head != ']') {
  skip_spaces(&head);

  char *namestart = head;
  while ((*head >= 'a' && *head <= 'z') || *head == '_') {
   ++head;
  }
  name = calloc(head - namestart + 1, 1);
  if (head != namestart) {
   strncpy(name, namestart, head - namestart);
  }

  skip_spaces(&head);
  value = ((void*)0);
  if (*head == '=') {
   ++head;
   skip_spaces(&head);
   if (*head == '"') {
    in_quotes = 1;
    ++head;
   }
   char *valuestart = head;
   if (in_quotes) {
    while (*head && (*head != '"' || *(head - 1) == '\\')) {
     ++head;
    }
    if (!*head) {
     *error_arg = strdup("Quote mismatch in criteria");
     goto cleanup;
    }
   } else {
    while (*head && *head != ' ' && *head != ']') {
     ++head;
    }
   }
   value = calloc(head - valuestart + 1, 1);
   strncpy(value, valuestart, head - valuestart);
   if (in_quotes) {
    ++head;
    in_quotes = 0;
   }
   unescape(value);
   sway_log(SWAY_DEBUG, "Found pair: %s=%s", name, value);
  }
  if (!parse_token(criteria, name, value)) {
   *error_arg = error;
   goto cleanup;
  }
  skip_spaces(&head);
  free(name);
  free(value);
  name = ((void*)0);
  value = ((void*)0);
 }
 if (*head != ']') {
  *error_arg = strdup("No closing brace found in criteria");
  goto cleanup;
 }

 if (criteria_is_empty(criteria)) {
  *error_arg = strdup("Criteria is empty");
  goto cleanup;
 }

 ++head;
 int len = head - raw;
 criteria->raw = calloc(len + 1, 1);
 strncpy(criteria->raw, raw, len);
 return criteria;

cleanup:
 free(name);
 free(value);
 criteria_destroy(criteria);
 return ((void*)0);
}
