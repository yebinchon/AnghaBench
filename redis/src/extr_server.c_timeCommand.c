
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
typedef int client ;


 int addReplyArrayLen (int *,int) ;
 int addReplyBulkLongLong (int *,int ) ;
 int gettimeofday (struct timeval*,int *) ;

void timeCommand(client *c) {
    struct timeval tv;



    gettimeofday(&tv,((void*)0));
    addReplyArrayLen(c,2);
    addReplyBulkLongLong(c,tv.tv_sec);
    addReplyBulkLongLong(c,tv.tv_usec);
}
