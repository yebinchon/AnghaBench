
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCHAR ;
typedef char CHAR ;


 char* GspAccessLocation ;
 int GspMemoryError ;
 int TRUE ;

__attribute__((used)) static CHAR
GspReadMemSafe(PCHAR Address)
{
    CHAR ch;

    if (((void*)0) == Address)
    {
        GspMemoryError = TRUE;
        return '\0';
    }

    GspAccessLocation = Address;
    ch = *Address;
    GspAccessLocation = ((void*)0);

    return ch;
}
