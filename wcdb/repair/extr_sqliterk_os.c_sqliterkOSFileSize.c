
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_3__ {scalar_t__ fd; int error; } ;
typedef TYPE_1__ sqliterk_file ;


 int SQLITERK_IOERR ;
 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int errno ;
 scalar_t__ fstat (scalar_t__,struct stat*) ;

int sqliterkOSFileSize(sqliterk_file *file, size_t *filesize)
{
    if (!file || file->fd < 0) {
        return SQLITERK_MISUSE;
    }
    struct stat statbuf;
    if (fstat(file->fd, &statbuf) != 0) {
        file->error = errno;
        return SQLITERK_IOERR;
    }
    *filesize = (size_t) statbuf.st_size;
    return SQLITERK_OK;
}
