
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
typedef size_t key_code ;
struct TYPE_3__ {size_t key; int string; } ;


 size_t KEYC_NUSER ;
 size_t KEYC_UNKNOWN ;
 size_t KEYC_USER ;
 TYPE_1__* key_string_table ;
 size_t nitems (TYPE_1__*) ;
 int sscanf (char const*,char*,size_t*) ;
 scalar_t__ strcasecmp (char const*,int ) ;

__attribute__((used)) static key_code
key_string_search_table(const char *string)
{
 u_int i, user;

 for (i = 0; i < nitems(key_string_table); i++) {
  if (strcasecmp(string, key_string_table[i].string) == 0)
   return (key_string_table[i].key);
 }

 if (sscanf(string, "User%u", &user) == 1 && user < KEYC_NUSER)
  return (KEYC_USER + user);

 return (KEYC_UNKNOWN);
}
