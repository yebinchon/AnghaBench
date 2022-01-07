
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int username ;
typedef int user ;


 int * ACLCreateUser (char*,int ) ;
 int Users ;
 int raxRemove (int ,unsigned char*,int ,int *) ;
 int serverAssert (int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

user *ACLCreateUnlinkedUser(void) {
    char username[64];
    for (int j = 0; ; j++) {
        snprintf(username,sizeof(username),"__fakeuser:%d__",j);
        user *fakeuser = ACLCreateUser(username,strlen(username));
        if (fakeuser == ((void*)0)) continue;
        int retval = raxRemove(Users,(unsigned char*) username,
                               strlen(username),((void*)0));
        serverAssert(retval != 0);
        return fakeuser;
    }
}
