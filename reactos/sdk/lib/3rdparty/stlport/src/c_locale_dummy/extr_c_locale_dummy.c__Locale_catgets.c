
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_messages {int dummy; } ;
typedef int nl_catd_type ;



const char* _Locale_catgets(struct _Locale_messages* lmes, nl_catd_type cat,
                            int setid, int msgid, const char *dfault)
{ return dfault; }
