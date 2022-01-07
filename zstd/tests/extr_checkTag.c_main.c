
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ZSTD_VERSION_STRING ;
 int printf (char*,...) ;
 scalar_t__ validate (char const* const) ;

int main(int argc, const char** argv)
{
    const char* const exeName = argv[0];
    const char* const tag = argv[1];
    if (argc!=2) {
        printf("incorrect usage : %s tag \n", exeName);
        return 2;
    }

    printf("Version : %s \n", ZSTD_VERSION_STRING);
    printf("Tag     : %s \n", tag);

    if (validate(tag)) {
        printf("OK : tag is compatible with zstd version \n");
        return 0;
    }

    printf("!! error : tag and versions are not compatible !! \n");
    return 1;
}
