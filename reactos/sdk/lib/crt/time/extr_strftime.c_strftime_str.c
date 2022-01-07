
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int ERANGE ;
 int FALSE ;
 int TRUE ;
 int * _errno () ;
 int memcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static inline BOOL strftime_str(char *str, size_t *pos, size_t max, char *src)
{
    size_t len = strlen(src);
    if(len > max-*pos) {
        *str = 0;
        *_errno() = ERANGE;
        return FALSE;
    }

    memcpy(str+*pos, src, len);
    *pos += len;
    return TRUE;
}
