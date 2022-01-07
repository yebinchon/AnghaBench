
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int assert (char const*) ;
 scalar_t__ isempty (char const*) ;
 char* strdup (char const*) ;
 char* strjoin (char*,char const*,char*,char const*,char*) ;
 scalar_t__ urlify_enabled () ;

int terminal_urlify(const char *url, const char *text, char **ret) {
        char *n;

        assert(url);




        if (isempty(text))
                text = url;

        if (urlify_enabled())
                n = strjoin("\x1B]8;;", url, "\a", text, "\x1B]8;;\a");
        else
                n = strdup(text);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 0;
}
