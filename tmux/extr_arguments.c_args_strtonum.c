
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct args_value {int value; } ;
struct args_entry {int values; } ;
struct args {int dummy; } ;


 struct args_value* TAILQ_LAST (int *,int ) ;
 struct args_entry* args_find (struct args*,int ) ;
 int args_values ;
 long long strtonum (int ,long long,long long,char const**) ;
 char* xstrdup (char const*) ;

long long
args_strtonum(struct args *args, u_char ch, long long minval, long long maxval,
    char **cause)
{
 const char *errstr;
 long long ll;
 struct args_entry *entry;
 struct args_value *value;

 if ((entry = args_find(args, ch)) == ((void*)0)) {
  *cause = xstrdup("missing");
  return (0);
 }
 value = TAILQ_LAST(&entry->values, args_values);

 ll = strtonum(value->value, minval, maxval, &errstr);
 if (errstr != ((void*)0)) {
  *cause = xstrdup(errstr);
  return (0);
 }

 *cause = ((void*)0);
 return (ll);
}
