
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int EINVAL ;
 int S_IRWXU ;
 int UTIL_isDirectory (char* const) ;
 int errno ;
 int fprintf (int ,char*) ;
 int free (char* const) ;
 int mkdir (char* const,int ) ;
 int stderr ;
 char* strdup (char const*) ;

__attribute__((used)) static int ensure_directory_exists(char const* indir) {
    char* const dir = strdup(indir);
    char* end = dir;
    int ret = 0;
    if (dir == ((void*)0)) {
        ret = EINVAL;
        goto out;
    }
    do {

        for (++end; *end != '\0' && *end != '/'; ++end)
            ;

        char const save = *end;
        *end = '\0';
        int const isdir = UTIL_isDirectory(dir);
        ret = mkdir(dir, S_IRWXU);
        *end = save;

        if (ret == 0 || (errno == EEXIST && isdir))
            continue;
        ret = errno;
        fprintf(stderr, "mkdir() failed\n");
        goto out;
    } while (*end != '\0');

    ret = 0;
out:
    free(dir);
    return ret;
}
