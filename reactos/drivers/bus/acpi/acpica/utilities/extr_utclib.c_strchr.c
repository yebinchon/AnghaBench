
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strchr (
    const char *String,
    int ch)
{


    for ( ; (*String); String++)
    {
        if ((*String) == (char) ch)
        {
            return ((char *) String);
        }
    }

    return (((void*)0));
}
