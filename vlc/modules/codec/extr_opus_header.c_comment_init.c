
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetDWLE (char*,size_t) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *comment_init(size_t *length, const char *vendor)
{

    if (!vendor)
        vendor = "unknown";
    size_t vendor_length = strlen(vendor);

    size_t user_comment_list_length = 0;
    size_t len = 8 + 4 + vendor_length + 4;
    char *p = malloc(len);
    if (p == ((void*)0))
        return ((void*)0);

    memcpy(p, "OpusTags", 8);
    SetDWLE(p + 8, vendor_length);
    memcpy(p + 12, vendor, vendor_length);
    SetDWLE(p + 12 + vendor_length, user_comment_list_length);

    *length = len;
    return p;
}
