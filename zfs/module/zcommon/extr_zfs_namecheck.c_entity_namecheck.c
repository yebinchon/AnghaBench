
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namecheck_err_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int NAME_ERR_EMPTY_COMPONENT ;
 int NAME_ERR_INVALCHAR ;
 int NAME_ERR_LEADING_SLASH ;
 int NAME_ERR_MULTIPLE_DELIMITERS ;
 int NAME_ERR_PARENT_REF ;
 int NAME_ERR_SELF_REF ;
 int NAME_ERR_TOOLONG ;
 int NAME_ERR_TRAILING_SLASH ;
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ strlen (char const*) ;
 int valid_char (char const) ;

int
entity_namecheck(const char *path, namecheck_err_t *why, char *what)
{
 const char *end;




 if (strlen(path) >= ZFS_MAX_DATASET_NAME_LEN) {
  if (why)
   *why = NAME_ERR_TOOLONG;
  return (-1);
 }


 if (path[0] == '/') {
  if (why)
   *why = NAME_ERR_LEADING_SLASH;
  return (-1);
 }

 if (path[0] == '\0') {
  if (why)
   *why = NAME_ERR_EMPTY_COMPONENT;
  return (-1);
 }

 const char *start = path;
 boolean_t found_delim = B_FALSE;
 for (;;) {

  end = start;
  while (*end != '/' && *end != '@' && *end != '#' &&
      *end != '\0')
   end++;

  if (*end == '\0' && end[-1] == '/') {

   if (why)
    *why = NAME_ERR_TRAILING_SLASH;
   return (-1);
  }


  for (const char *loc = start; loc != end; loc++) {
   if (!valid_char(*loc) && *loc != '%') {
    if (why) {
     *why = NAME_ERR_INVALCHAR;
     *what = *loc;
    }
    return (-1);
   }
  }

  if (*end == '\0' || *end == '/') {
   int component_length = end - start;

   if (component_length == 1) {
    if (start[0] == '.') {
     if (why)
      *why = NAME_ERR_SELF_REF;
     return (-1);
    }
   }


   if (component_length == 2) {
    if (start[0] == '.' && start[1] == '.') {
     if (why)
      *why = NAME_ERR_PARENT_REF;
     return (-1);
    }
   }
  }


  if (*end == '@' || *end == '#') {

   if (found_delim != 0) {
    if (why)
     *why = NAME_ERR_MULTIPLE_DELIMITERS;
    return (-1);
   }

   found_delim = B_TRUE;
  }


  if (start == end) {
   if (why)
    *why = NAME_ERR_EMPTY_COMPONENT;
   return (-1);
  }


  if (*end == '\0')
   return (0);





  if (*end == '/' && found_delim != 0) {
   if (why)
    *why = NAME_ERR_TRAILING_SLASH;
   return (-1);
  }


  start = end + 1;
 }
}
