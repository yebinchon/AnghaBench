
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * read_handler; } ;
typedef TYPE_1__ connection ;



int connHasReadHandler(connection *conn) {
    return conn->read_handler != ((void*)0);
}
