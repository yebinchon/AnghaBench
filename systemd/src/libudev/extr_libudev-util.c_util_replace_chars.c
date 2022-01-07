
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ strchr (char const*,char) ;
 int utf8_encoded_valid_unichar (char*,size_t) ;
 scalar_t__ whitelisted_char_for_devnode (char,char const*) ;

size_t util_replace_chars(char *str, const char *white) {
        size_t i = 0, replaced = 0;

        assert(str);

        while (str[i] != '\0') {
                int len;

                if (whitelisted_char_for_devnode(str[i], white)) {
                        i++;
                        continue;
                }


                if (str[i] == '\\' && str[i+1] == 'x') {
                        i += 2;
                        continue;
                }


                len = utf8_encoded_valid_unichar(str + i, (size_t) -1);
                if (len > 1) {
                        i += len;
                        continue;
                }


                if (isspace(str[i]) && white && strchr(white, ' ')) {
                        str[i] = ' ';
                        i++;
                        replaced++;
                        continue;
                }


                str[i] = '_';
                i++;
                replaced++;
        }
        return replaced;
}
