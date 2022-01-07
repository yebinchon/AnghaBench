
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int verify_dotfile (char const*) ;

int verify_path(const char *path)
{
    char c;

    goto inside;
    for (;;) {
        if (!c)
            return 1;
        if (c == '/') {
        inside:
            c = *path++;
            switch (c) {
            default:
                continue;
            case '/': case '\0':
                break;
            case '.':
                if (verify_dotfile(path))
                    continue;
            }
            return 0;
        }
        c = *path++;
    }
}
