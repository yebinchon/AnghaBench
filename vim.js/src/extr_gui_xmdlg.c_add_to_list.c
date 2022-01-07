
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ENTRIES_IN_LIST ;
 char* XtNewString (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* wild ;

__attribute__((used)) static void
add_to_list(char **buf, char *item, int *count)
{
    int i;
    int j;

    if (*count == MAX_ENTRIES_IN_LIST)
 return;


    for (i = 0; i < *count; ++i)
    {
 if (!strcmp(buf[i], item))
     return;
    }


    if (!strcmp(item, wild))
 i = 0;
    else
 for (i = 0; i < *count; ++i)
     if (strcmp(buf[i], item) > 0 && strcmp(buf[i], wild))
  break;


    for (j = *count; j > i; --j)
 buf[j] = buf[j-1];
    buf[i] = XtNewString(item);

    ++(*count);
}
