
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *lfind(const void *key, const void *base, size_t *nmemb,
            size_t size, int(*cmp)(const void *, const void *))
{
    for (int i = 0; i < *nmemb; ++i)
    {
        const void *elem = base + i * size;
        if (!cmp(key, elem))
            return elem;
    }
    return ((void*)0);
}
