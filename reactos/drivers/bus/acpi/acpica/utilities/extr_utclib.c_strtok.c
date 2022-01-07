
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strpbrk (char*,char const*) ;

char*
strtok (
    char *String,
    const char *Delimiters)
{
    char *Begin = String;
    static char *SavedPtr;


    if (Begin == ((void*)0))
    {
        if (SavedPtr == ((void*)0))
        {
            return (((void*)0));
        }
        Begin = SavedPtr;
    }

    SavedPtr = strpbrk (Begin, Delimiters);
    while (SavedPtr == Begin)
    {
        *Begin++ = '\0';
        SavedPtr = strpbrk (Begin, Delimiters);
    }

    if (SavedPtr)
    {
        *SavedPtr++ = '\0';
        return (Begin);
    }
    else
    {
        return (((void*)0));
    }
}
