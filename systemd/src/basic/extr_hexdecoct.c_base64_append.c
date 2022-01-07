
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base64_append_width (char**,int,char*,int,void const*,size_t,int) ;

int base64_append(
                char **prefix, int plen,
                const void *p, size_t l,
                int indent, int width) {

        if (plen > width / 2 || plen + indent > width)

                return base64_append_width(prefix, plen, "\n", indent, p, l, width - indent - 1);
        else

                return base64_append_width(prefix, plen, " ", plen, p, l, width - plen - 1);
}
