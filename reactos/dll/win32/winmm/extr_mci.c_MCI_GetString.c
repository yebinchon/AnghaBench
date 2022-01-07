
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPWSTR ;
typedef int DWORD ;


 int MCIERR_EXTRA_CHARACTERS ;
 int MCIERR_NO_CLOSING_QUOTE ;
 int TRACE (char*) ;
 char* strchrW (char*,char) ;
 int strlenW (char*) ;

__attribute__((used)) static DWORD MCI_GetString(LPWSTR* str, LPWSTR* args)
{
    LPWSTR ptr = *args;


    if (*ptr == '"') {
 ptr = strchrW(*str = ptr + 1, '"');
 if (!ptr) return MCIERR_NO_CLOSING_QUOTE;

 if (ptr[-1] == '\\') TRACE("Ooops: un-escaped \"\n");
 *ptr++ = '\0';
 if (*ptr != ' ' && *ptr != '\0') return MCIERR_EXTRA_CHARACTERS;
    } else {
 ptr = strchrW(ptr, ' ');

 if (ptr) {
     *ptr++ = '\0';
 } else {
     ptr = *args + strlenW(*args);
 }
 *str = *args;
    }

    *args = ptr;
    return 0;
}
