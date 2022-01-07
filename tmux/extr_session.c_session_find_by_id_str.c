
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct session {int dummy; } ;


 int UINT_MAX ;
 struct session* session_find_by_id (int ) ;
 int strtonum (char const*,int ,int ,char const**) ;

struct session *
session_find_by_id_str(const char *s)
{
 const char *errstr;
 u_int id;

 if (*s != '$')
  return (((void*)0));

 id = strtonum(s + 1, 0, UINT_MAX, &errstr);
 if (errstr != ((void*)0))
  return (((void*)0));
 return (session_find_by_id(id));
}
