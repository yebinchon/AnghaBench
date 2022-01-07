
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int verify_dotfile(const char *rest)
{





    switch (*rest) {

    case '\0': case '/':
        return 0;





    case 'g':
        if (rest[1] != 'i')
            break;
        if (rest[2] != 't')
            break;
        rest += 2;

    case '.':
        if (rest[1] == '\0' || rest[1] == '/')
            return 0;
    }
    return 1;
}
