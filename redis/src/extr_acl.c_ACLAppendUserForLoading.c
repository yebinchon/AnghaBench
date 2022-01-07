
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int * sds ;


 int * ACLCreateUnlinkedUser () ;
 int ACLFreeUser (int *) ;
 int ACLSetUser (int *,int *,int ) ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ ENOENT ;
 int UsersToLoad ;
 scalar_t__ errno ;
 int listAddNodeTail (int ,int **) ;
 int * sdsdup (int *) ;
 int sdslen (int *) ;
 scalar_t__ strcasecmp (int *,char*) ;
 int ** zmalloc (int) ;

int ACLAppendUserForLoading(sds *argv, int argc, int *argc_err) {
    if (argc < 2 || strcasecmp(argv[0],"user")) {
        if (argc_err) *argc_err = 0;
        return C_ERR;
    }



    user *fakeuser = ACLCreateUnlinkedUser();

    for (int j = 2; j < argc; j++) {
        if (ACLSetUser(fakeuser,argv[j],sdslen(argv[j])) == C_ERR) {
            if (errno != ENOENT) {
                ACLFreeUser(fakeuser);
                if (argc_err) *argc_err = j;
                return C_ERR;
            }
        }
    }


    sds *copy = zmalloc(sizeof(sds)*argc);
    for (int j = 1; j < argc; j++) copy[j-1] = sdsdup(argv[j]);
    copy[argc-1] = ((void*)0);
    listAddNodeTail(UsersToLoad,copy);
    ACLFreeUser(fakeuser);
    return C_OK;
}
