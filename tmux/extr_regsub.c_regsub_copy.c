
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static void
regsub_copy(char **buf, size_t *len, const char *text, size_t start,
    size_t end)
{
 size_t add = end - start;

 *buf = xrealloc(*buf, (*len) + add + 1);
 memcpy((*buf) + *len, text + start, add);
 (*len) += add;
}
