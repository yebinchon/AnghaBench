
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int format ;
 scalar_t__ strcasecmp (char*,char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int get_file_format(char *filename)
{
    unsigned int i;
    static const char *extension[] = {
        "pgx", "pnm", "pgm", "ppm", "pbm", "pam", "bmp", "tif", "raw", "tga", "png", "j2k", "jp2", "j2c", "jpc"
    };
    static const int format[] = {
        133, 131, 131, 131, 131, 131, 136, 128, 130, 129, 132, 135, 134, 135, 135
    };
    char * ext = strrchr(filename, '.');
    if (ext == ((void*)0)) {
        return -1;
    }
    ext++;
    for (i = 0; i < sizeof(format) / sizeof(*format); i++) {
        if (strcasecmp(ext, extension[i]) == 0) {
            return format[i];
        }
    }
    return -1;
}
