
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ULONG ;


 int is_hex (char) ;

__attribute__((used)) static bool is_uuid(ULONG namelen, WCHAR* name) {
    ULONG i;

    if (namelen != 36 * sizeof(WCHAR))
        return 0;

    for (i = 0; i < 36; i++) {
        if (i == 8 || i == 13 || i == 18 || i == 23) {
            if (name[i] != '-')
                return 0;
        } else if (!is_hex(name[i]))
            return 0;
    }

    return 1;
}
