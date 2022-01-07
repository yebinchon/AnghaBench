
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ELEMENTSOF (size_t*) ;
 int assert (int) ;
 int cescape_char (char const,char*) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ write_ellipsis (char*,int) ;

char *cellescape(char *buf, size_t len, const char *s) {
        size_t i = 0, last_char_width[4] = {}, k = 0, j;

        assert(len > 0);

        for (;;) {
                char four[4];
                int w;

                if (*s == 0)
                        goto done;

                w = cescape_char(*s, four);
                if (i + w + 1 > len)

                        break;


                memcpy(buf + i, four, w);
                i += w;


                last_char_width[k] = w;
                k = (k + 1) % 4;

                s++;
        }



        for (j = 0; j < ELEMENTSOF(last_char_width); j++) {

                if (i + 4 <= len)
                        break;

                k = k == 0 ? 3 : k - 1;
                if (last_char_width[k] == 0)
                        break;

                assert(i >= last_char_width[k]);
                i -= last_char_width[k];
        }

        if (i + 4 <= len)
                i += write_ellipsis(buf + i, 0);
        else if (i + 3 <= len) {
                buf[i++] = '.';
                buf[i++] = '.';
        } else if (i + 2 <= len)
                buf[i++] = '.';
        else
                assert(i + 1 <= len);

 done:
        buf[i] = '\0';
        return buf;
}
