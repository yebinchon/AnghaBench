
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string {scalar_t__ len; char* data; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int NC_ENOMEM ;
 int NC_OK ;
 char* nc_strndup (char*,scalar_t__) ;

rstatus_t
string_duplicate(struct string *dst, const struct string *src)
{
    ASSERT(dst->len == 0 && dst->data == ((void*)0));
    ASSERT(src->len != 0 && src->data != ((void*)0));

    dst->data = nc_strndup(src->data, src->len + 1);
    if (dst->data == ((void*)0)) {
        return NC_ENOMEM;
    }

    dst->len = src->len;
    dst->data[dst->len] = '\0';

    return NC_OK;
}
