
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {size_t length; char* ptr; int error; } ;


 int EOF ;
 int add_overflow (size_t,int,size_t*) ;
 int memcpy (char*,void const*,size_t) ;
 char* realloc (char*,size_t) ;
 scalar_t__ unlikely (int ) ;

size_t vlc_memstream_write(struct vlc_memstream *ms, const void *ptr,
                           size_t len)
{
    size_t newlen;

    if (unlikely(add_overflow(ms->length, len, &newlen))
     || unlikely(add_overflow(newlen, 1, &newlen)))
        goto error;

    char *base = realloc(ms->ptr, newlen);
    if (unlikely(base == ((void*)0)))
        goto error;

    memcpy(base + ms->length, ptr, len);
    ms->ptr = base;
    ms->length += len;
    base[ms->length] = '\0';
    return len;

error:
    ms->error = EOF;
    return 0;
}
