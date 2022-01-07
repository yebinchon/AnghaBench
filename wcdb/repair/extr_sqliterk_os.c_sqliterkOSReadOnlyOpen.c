
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fd; void* path; } ;
typedef TYPE_1__ sqliterk_file ;


 int O_RDONLY ;
 int SQLITERK_CANTOPEN ;
 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 int errno ;
 scalar_t__ open (void*,int ) ;
 int sqliterkOSClose (TYPE_1__*) ;
 int sqliterkOSError (int,char*,int,...) ;
 void* sqliterkOSMalloc (size_t) ;
 int strerror (int ) ;
 int strlen (char const*) ;
 int strncpy (void*,char const*,size_t) ;

int sqliterkOSReadOnlyOpen(const char *path, sqliterk_file **file)
{
    if (!path || !path[0] || !file) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    sqliterk_file *theFile = sqliterkOSMalloc(sizeof(sqliterk_file));
    if (!theFile) {
        rc = SQLITERK_NOMEM;
        sqliterkOSError(rc, "Not enough memory, required %zu bytes.",
                        sizeof(sqliterk_file));
        goto sqliterkOSReadOnlyOpen_Failed;
    }

    size_t len = sizeof(char) * (strlen(path) + 1);
    theFile->path = sqliterkOSMalloc(len);
    if (!theFile->path) {
        rc = SQLITERK_NOMEM;
        sqliterkOSError(rc, "Not enough memory, required %zu bytes.", len);
        goto sqliterkOSReadOnlyOpen_Failed;
    }
    strncpy(theFile->path, path, len);


    theFile->fd = open(theFile->path, O_RDONLY);
    if (theFile->fd < 0) {
        rc = SQLITERK_CANTOPEN;
        sqliterkOSError(rc, "Cannot open '%s' for reading: %s", theFile->path,
                        strerror(errno));
        goto sqliterkOSReadOnlyOpen_Failed;
    }
    *file = theFile;
    return SQLITERK_OK;

sqliterkOSReadOnlyOpen_Failed:
    if (theFile) {
        sqliterkOSClose(theFile);
    }
    *file = ((void*)0);
    return rc;
}
