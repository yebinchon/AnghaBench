
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_mode; int st_size; } ;
typedef TYPE_1__ SeafStat ;


 int OBJ_BLOB ;
 int O_BINARY ;
 int O_RDONLY ;
 int SEAF_PATH_MAX ;

 int S_IFMT ;

 int errno ;
 int hash_sha1_file (char*,int,int ,unsigned char*) ;
 int index_fd (unsigned char*,int,TYPE_1__*,int ,char const*) ;
 int readlink (char const*,char*,int) ;
 int seaf_util_open (char const*,int) ;
 int seaf_warning (char*,char const*,...) ;
 char* strerror (int ) ;
 int typename (int ) ;

int index_path(unsigned char *sha1, const char *path, SeafStat *st)
{
    int fd;
    char buf[SEAF_PATH_MAX];
    int pathlen;

    switch (st->st_mode & S_IFMT) {
    case 128:
        fd = seaf_util_open (path, O_RDONLY | O_BINARY);
        if (fd < 0) {
            seaf_warning("g_open (\"%s\"): %s\n", path, strerror(errno));
            return -1;
        }
        if (index_fd(sha1, fd, st, OBJ_BLOB, path) < 0) {
            return -1;
        }
        break;

    case 129:
        pathlen = readlink(path, buf, SEAF_PATH_MAX);
        if (pathlen != st->st_size) {
            char *errstr = strerror(errno);
            seaf_warning("readlink(\"%s\"): %s\n", path, errstr);
            return -1;
        }
        hash_sha1_file(buf, pathlen, typename(OBJ_BLOB), sha1);
        break;

    default:
        seaf_warning("%s: unsupported file type\n", path);
        return -1;
    }
    return 0;
}
