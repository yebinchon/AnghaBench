
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int compar_void(const void *a, const void *b, void *data)
{
    const char *sa = a, *sb = b;
    int (*cmp)(const char **, const char **) = data;

    return cmp(&sa, &sb);
}
