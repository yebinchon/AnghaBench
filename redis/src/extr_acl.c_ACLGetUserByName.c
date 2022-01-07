
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void user ;


 int Users ;
 void* raxFind (int ,unsigned char*,size_t) ;
 void* raxNotFound ;

user *ACLGetUserByName(const char *name, size_t namelen) {
    void *myuser = raxFind(Users,(unsigned char*)name,namelen);
    if (myuser == raxNotFound) return ((void*)0);
    return myuser;
}
