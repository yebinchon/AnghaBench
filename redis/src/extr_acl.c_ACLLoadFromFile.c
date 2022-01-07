
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user ;
typedef char* sds ;
typedef int rax ;
typedef int buf ;
struct TYPE_2__ {int acl_filename; } ;
typedef int FILE ;


 int ACLCopyUser (int *,int *) ;
 int * ACLCreateUnlinkedUser () ;
 int * ACLCreateUser (char*,scalar_t__) ;
 int ACLFreeUser (int *) ;
 int ACLFreeUsersSet (int *) ;
 int * ACLGetUserByName (char*,int) ;
 int ACLInitDefaultUser () ;
 scalar_t__ ACLSetUser (int *,char*,scalar_t__) ;
 char* ACLSetUserStringError () ;
 scalar_t__ C_OK ;
 int * DefaultUser ;
 int * Users ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int raxInsert (int *,unsigned char*,int,int *,int *) ;
 int * raxNew () ;
 int raxRemove (int *,unsigned char*,int,int *) ;
 char* sdscat (char*,char*) ;
 char* sdscatprintf (char*,char*,char const*,int,...) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 int sdsfreesplitres (char**,int) ;
 scalar_t__ sdslen (char*) ;
 char** sdssplitargs (char*,int*) ;
 char** sdssplitlen (char*,int ,char*,int,int*) ;
 char* sdstrim (char*,char*) ;
 TYPE_1__ server ;
 int serverAssert (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int ) ;
 int strlen (char*) ;

sds ACLLoadFromFile(const char *filename) {
    FILE *fp;
    char buf[1024];


    if ((fp = fopen(filename,"r")) == ((void*)0)) {
        sds errors = sdscatprintf(sdsempty(),
            "Error loading ACLs, opening file '%s': %s",
            filename, strerror(errno));
        return errors;
    }


    sds acls = sdsempty();
    while(fgets(buf,sizeof(buf),fp) != ((void*)0))
        acls = sdscat(acls,buf);
    fclose(fp);


    int totlines;
    sds *lines, errors = sdsempty();
    lines = sdssplitlen(acls,strlen(acls),"\n",1,&totlines);
    sdsfree(acls);



    user *fakeuser = ACLCreateUnlinkedUser();




    rax *old_users = Users;
    user *old_default_user = DefaultUser;
    Users = raxNew();
    ACLInitDefaultUser();


    for (int i = 0; i < totlines; i++) {
        sds *argv;
        int argc;
        int linenum = i+1;

        lines[i] = sdstrim(lines[i]," \t\r\n");


        if (lines[i][0] == '\0') continue;


        argv = sdssplitargs(lines[i],&argc);
        if (argv == ((void*)0)) {
            errors = sdscatprintf(errors,
                     "%s:%d: unbalanced quotes in acl line. ",
                     server.acl_filename, linenum);
            continue;
        }


        if (argc == 0) {
            sdsfreesplitres(argv,argc);
            continue;
        }


        if (strcmp(argv[0],"user") || argc < 2) {
            errors = sdscatprintf(errors,
                     "%s:%d should start with user keyword followed "
                     "by the username. ", server.acl_filename,
                     linenum);
            sdsfreesplitres(argv,argc);
            continue;
        }



        ACLSetUser(fakeuser,"reset",-1);
        int j;
        for (j = 2; j < argc; j++) {
            if (ACLSetUser(fakeuser,argv[j],sdslen(argv[j])) != C_OK) {
                char *errmsg = ACLSetUserStringError();
                errors = sdscatprintf(errors,
                         "%s:%d: %s. ",
                         server.acl_filename, linenum, errmsg);
                continue;
            }
        }




        if (sdslen(errors) != 0) {
            sdsfreesplitres(argv,argc);
            continue;
        }



        user *u = ACLCreateUser(argv[1],sdslen(argv[1]));
        if (!u) {
            u = ACLGetUserByName(argv[1],sdslen(argv[1]));
            serverAssert(u != ((void*)0));
            ACLSetUser(u,"reset",-1);
        }



        for (j = 2; j < argc; j++)
            serverAssert(ACLSetUser(u,argv[j],sdslen(argv[j])) == C_OK);

        sdsfreesplitres(argv,argc);
    }

    ACLFreeUser(fakeuser);
    sdsfreesplitres(lines,totlines);
    DefaultUser = old_default_user;


    if (sdslen(errors) == 0) {



        user *new = ACLGetUserByName("default",7);
        serverAssert(new != ((void*)0));
        ACLCopyUser(DefaultUser,new);
        ACLFreeUser(new);
        raxInsert(Users,(unsigned char*)"default",7,DefaultUser,((void*)0));
        raxRemove(old_users,(unsigned char*)"default",7,((void*)0));
        ACLFreeUsersSet(old_users);
        sdsfree(errors);
        return ((void*)0);
    } else {
        ACLFreeUsersSet(Users);
        Users = old_users;
        errors = sdscat(errors,"WARNING: ACL errors detected, no change to the previously active ACL rules was performed");
        return errors;
    }
}
