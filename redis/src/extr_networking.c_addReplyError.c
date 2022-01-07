
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int addReplyErrorLength (int *,char const*,int ) ;
 int strlen (char const*) ;

void addReplyError(client *c, const char *err) {
    addReplyErrorLength(c,err,strlen(err));
}
