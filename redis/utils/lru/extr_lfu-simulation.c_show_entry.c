
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ ctime; scalar_t__ hits; int decrtime; int counter; } ;


 int keyspace_size ;
 int printf (char*,long,char*,int ,int ,unsigned long,scalar_t__) ;
 scalar_t__ time (int *) ;

void show_entry(long pos, struct entry *e) {
    char *tag = "normal       ";

    if (pos >= 10 && pos <= 14) tag = "new no access";
    if (pos >= 15 && pos <= 19) tag = "new accessed ";
    if (pos >= keyspace_size -5) tag= "old no access";

    printf("%ld] <%s> frequency:%d decrtime:%d [%lu hits | age:%ld sec]\n",
        pos, tag, e->counter, e->decrtime, (unsigned long)e->hits,
            time(((void*)0)) - e->ctime);
}
