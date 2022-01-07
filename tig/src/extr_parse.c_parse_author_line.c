
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct time {int dummy; } ;
struct ident {int dummy; } ;
struct TYPE_2__ {char const* name; char const* email; } ;


 scalar_t__ STRING_SIZE (char*) ;
 struct ident* get_author (char const*,char const*) ;
 int parse_timesec (struct time*,char*) ;
 int parse_timezone (struct time*,char*) ;
 char* strchr (char*,char) ;
 char* string_trim (char*) ;
 scalar_t__ strlen (char*) ;
 TYPE_1__ unknown_ident ;

void
parse_author_line(char *ident, const struct ident **author, struct time *time)
{
 char *nameend = strchr(ident, '<');
 char *emailend = strchr(ident, '>');
 const char *name, *email = "";

 if (nameend && emailend)
  *nameend = *emailend = 0;
 name = string_trim(ident);
 if (nameend)
  email = string_trim(nameend + 1);
 if (!*name)
  name = *email ? email : unknown_ident.name;
 if (!*email)
  email = *name ? name : unknown_ident.email;

 *author = get_author(name, email);


 if (time && emailend && emailend[1] == ' ') {
  char *secs = emailend + 2;
  char *zone = strchr(secs, ' ');

  parse_timesec(time, secs);

  if (zone && strlen(zone) == STRING_SIZE(" +0700"))
   parse_timezone(time, zone + 1);
 }
}
