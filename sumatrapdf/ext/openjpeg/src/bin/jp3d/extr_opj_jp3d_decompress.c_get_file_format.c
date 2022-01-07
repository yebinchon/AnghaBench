
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int format ;







 scalar_t__ strnicmp (char*,char const*,int) ;
 char* strrchr (char*,char) ;

int get_file_format(char *filename)
{
    int i;
    static const char *extension[] = {"pgx", "bin", "j3d", "jp3d", "j2k", "img"};
    static const int format[] = { 128, 132, 129, 129, 130, 131};
    char * ext = strrchr(filename, '.');
    if (ext) {
        ext++;
        for (i = 0; i < sizeof(format) / sizeof(format[0]); i++) {
            if (strnicmp(ext, extension[i], 3) == 0) {
                return format[i];
            }
        }
    }

    return -1;
}
