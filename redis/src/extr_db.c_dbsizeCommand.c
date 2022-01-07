
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_5__ {int dict; } ;


 int addReplyLongLong (TYPE_2__*,int ) ;
 int dictSize (int ) ;

void dbsizeCommand(client *c) {
    addReplyLongLong(c,dictSize(c->db->dict));
}
