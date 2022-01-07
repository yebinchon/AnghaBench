
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (char*) ;
 scalar_t__ isalnumW (char) ;
 scalar_t__ isspaceW (char) ;

__attribute__((used)) static BOOL parse_event_str(WCHAR *event, const WCHAR **args)
{
    WCHAR *ptr;

    TRACE("%s\n", debugstr_w(event));

    for(ptr = event; isalnumW(*ptr); ptr++);
    if(!*ptr) {
        *args = ((void*)0);
        return TRUE;
    }

    if(*ptr != '(')
        return FALSE;

    *ptr++ = 0;
    *args = ptr;
    while(isalnumW(*ptr) || isspaceW(*ptr) || *ptr == ',')
        ptr++;

    if(*ptr != ')')
        return FALSE;

    *ptr++ = 0;
    return !*ptr;
}
