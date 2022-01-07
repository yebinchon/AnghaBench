
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 void* GetDWLE (char*) ;
 int SetDWLE (char*,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char* realloc (char*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int comment_add(char **comments, size_t *length, const char *tag,
                       const char *val)
{
    char *p = *comments;
    uint32_t vendor_length = GetDWLE(p + 8);
    size_t user_comment_list_length = GetDWLE(p + 8 + 4 + vendor_length);
    size_t tag_len = (tag ? strlen(tag) : 0);
    size_t val_len = strlen(val);
    size_t len = (*length) + 4 + tag_len + val_len;

    char *reaced = realloc(p, len);
    if (reaced == ((void*)0))
        return 1;
    p = reaced;

    SetDWLE(p + *length, tag_len + val_len);
    if (tag) memcpy(p + *length + 4, tag, tag_len);
    memcpy(p + *length + 4 + tag_len, val, val_len);
    SetDWLE(p + 8 + 4 + vendor_length, user_comment_list_length + 1);
    *comments = p;
    *length = len;
    return 0;
}
