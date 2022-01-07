
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;



__attribute__((used)) static xmlChar *
xmlAttrNormalizeSpace(const xmlChar *src, xmlChar *dst)
{
    if ((src == ((void*)0)) || (dst == ((void*)0)))
        return(((void*)0));

    while (*src == 0x20) src++;
    while (*src != 0) {
 if (*src == 0x20) {
     while (*src == 0x20) src++;
     if (*src != 0)
  *dst++ = 0x20;
 } else {
     *dst++ = *src++;
 }
    }
    *dst = 0;
    if (dst == src)
       return(((void*)0));
    return(dst);
}
