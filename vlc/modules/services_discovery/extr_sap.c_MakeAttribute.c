
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* value; int name; } ;
typedef TYPE_1__ attribute_t ;


 int EnsureUTF8 (int ) ;
 TYPE_1__* malloc (scalar_t__) ;
 char* strchr (int ,char) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline attribute_t *MakeAttribute (const char *str)
{
    attribute_t *a = malloc (sizeof (*a) + strlen (str) + 1);
    if (a == ((void*)0))
        return ((void*)0);

    strcpy (a->name, str);
    EnsureUTF8 (a->name);
    char *value = strchr (a->name, ':');
    if (value != ((void*)0))
    {
        *value++ = '\0';
        a->value = value;
    }
    else
        a->value = "";
    return a;
}
