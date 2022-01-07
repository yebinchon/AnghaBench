
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * name; } ;
typedef TYPE_1__ user ;
typedef scalar_t__ ssize_t ;
typedef int * sds ;
struct TYPE_9__ {TYPE_1__* data; } ;
typedef TYPE_2__ raxIterator ;


 int * ACLDescribeUser (TYPE_1__*) ;
 int C_ERR ;
 int C_OK ;
 int LL_WARNING ;
 int O_CREAT ;
 int O_WRONLY ;
 int Users ;
 int close (int) ;
 int errno ;
 scalar_t__ getpid () ;
 scalar_t__ mstime () ;
 int open (int *,int,int) ;
 scalar_t__ raxNext (TYPE_2__*) ;
 int raxSeek (TYPE_2__*,char*,int *,int ) ;
 int raxStart (TYPE_2__*,int ) ;
 int raxStop (TYPE_2__*) ;
 int rename (int *,char const*) ;
 int * sdscatfmt (int *,char*,int,int) ;
 int * sdscatlen (int *,char*,int) ;
 int * sdscatsds (int *,int *) ;
 int * sdsempty () ;
 int sdsfree (int *) ;
 scalar_t__ sdslen (int *) ;
 int * sdsnew (char const*) ;
 int serverLog (int ,char*,int ) ;
 int strerror (int ) ;
 int unlink (int *) ;
 scalar_t__ write (int,int *,scalar_t__) ;

int ACLSaveToFile(const char *filename) {
    sds acl = sdsempty();
    int fd = -1;
    sds tmpfilename = ((void*)0);
    int retval = C_ERR;



    raxIterator ri;
    raxStart(&ri,Users);
    raxSeek(&ri,"^",((void*)0),0);
    while(raxNext(&ri)) {
        user *u = ri.data;

        sds user = sdsnew("user ");
        user = sdscatsds(user,u->name);
        user = sdscatlen(user," ",1);
        sds descr = ACLDescribeUser(u);
        user = sdscatsds(user,descr);
        sdsfree(descr);
        acl = sdscatsds(acl,user);
        acl = sdscatlen(acl,"\n",1);
        sdsfree(user);
    }
    raxStop(&ri);


    tmpfilename = sdsnew(filename);
    tmpfilename = sdscatfmt(tmpfilename,".tmp-%i-%I",
        (int)getpid(),(int)mstime());
    if ((fd = open(tmpfilename,O_WRONLY|O_CREAT,0644)) == -1) {
        serverLog(LL_WARNING,"Opening temp ACL file for ACL SAVE: %s",
            strerror(errno));
        goto cleanup;
    }


    if (write(fd,acl,sdslen(acl)) != (ssize_t)sdslen(acl)) {
        serverLog(LL_WARNING,"Writing ACL file for ACL SAVE: %s",
            strerror(errno));
        goto cleanup;
    }
    close(fd); fd = -1;


    if (rename(tmpfilename,filename) == -1) {
        serverLog(LL_WARNING,"Renaming ACL file for ACL SAVE: %s",
            strerror(errno));
        goto cleanup;
    }
    sdsfree(tmpfilename); tmpfilename = ((void*)0);
    retval = C_OK;

cleanup:
    if (fd != -1) close(fd);
    if (tmpfilename) unlink(tmpfilename);
    sdsfree(tmpfilename);
    sdsfree(acl);
    return retval;
}
