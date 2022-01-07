
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int format ;
 scalar_t__ _strnicmp (char*,char const*,int) ;
 char* strrchr (char*,char) ;

int get_file_format(char *filename)
{
    unsigned int i;
    static const char *extension[] = {"pgx", "pnm", "pgm", "ppm", "bmp", "tif", "raw", "tga", "png", "j2k", "jp2", "jpt", "j2c", "jpc" };
    static const int format[] = { 133, 131, 131, 131, 137, 128, 130, 129, 132, 136, 135, 134, 136, 136 };
    char * ext = strrchr(filename, '.');
    if (ext == ((void*)0)) {
        return -1;
    }
    ext++;
    if (ext) {
        for (i = 0; i < sizeof(format) / sizeof(*format); i++) {
            if (_strnicmp(ext, extension[i], 3) == 0) {
                return format[i];
            }
        }
    }

    return -1;
}
