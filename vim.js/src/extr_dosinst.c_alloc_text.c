
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * text; } ;


 int * alloc (int) ;
 TYPE_1__* choices ;
 int free (int *) ;
 int sprintf (int *,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
alloc_text(int idx, char *fmt, char *arg)
{
    if (choices[idx].text != ((void*)0))
 free(choices[idx].text);

    choices[idx].text = alloc((int)(strlen(fmt) + strlen(arg)) - 1);
    sprintf(choices[idx].text, fmt, arg);
}
