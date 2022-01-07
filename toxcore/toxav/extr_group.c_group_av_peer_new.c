
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int g_c; } ;
struct TYPE_5__ {int buffer; } ;
typedef TYPE_1__ Group_Peer_AV ;
typedef TYPE_2__ Group_AV ;


 int GROUP_JBUF_SIZE ;
 TYPE_1__* calloc (int,int) ;
 int create_queue (int ) ;
 int group_peer_set_object (int ,int,int,TYPE_1__*) ;

__attribute__((used)) static void group_av_peer_new(void *object, int groupnumber, int friendgroupnumber)
{
    Group_AV *group_av = object;
    Group_Peer_AV *peer_av = calloc(1, sizeof(Group_Peer_AV));

    if (!peer_av)
        return;

    peer_av->buffer = create_queue(GROUP_JBUF_SIZE);
    group_peer_set_object(group_av->g_c, groupnumber, friendgroupnumber, peer_av);
}
