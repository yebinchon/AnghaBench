
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_name_hint {int dummy; } ;
struct _Locale_messages {int dummy; } ;


 scalar_t__ _Locale_create (char const*,int*) ;

struct _Locale_messages* _Locale_messages_create(const char *name,
                                                 struct _Locale_name_hint* hint, int *__err_code)
{ return (struct _Locale_messages*)_Locale_create(name, __err_code); }
