
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int addReplyBulkCBuffer (int *,char const*,int ) ;
 int addReplyNull (int *) ;
 int strlen (char const*) ;

void addReplyBulkCString(client *c, const char *s) {
    if (s == ((void*)0)) {
        addReplyNull(c);
    } else {
        addReplyBulkCBuffer(c,s,strlen(s));
    }
}
