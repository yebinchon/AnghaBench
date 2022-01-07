
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct string {size_t len; char* data; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int NC_ENOMEM ;
 int NC_OK ;
 char* nc_strndup (int const*,scalar_t__) ;

rstatus_t
string_copy(struct string *dst, const uint8_t *src, uint32_t srclen)
{
    ASSERT(dst->len == 0 && dst->data == ((void*)0));
    ASSERT(src != ((void*)0) && srclen != 0);

    dst->data = nc_strndup(src, srclen + 1);
    if (dst->data == ((void*)0)) {
        return NC_ENOMEM;
    }

    dst->len = srclen;
    dst->data[dst->len] = '\0';

    return NC_OK;
}
