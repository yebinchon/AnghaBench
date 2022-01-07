
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kill_group_av (void*) ;

__attribute__((used)) static void group_av_groupchat_delete(void *object, int groupnumber)
{
    if (object)
        kill_group_av(object);
}
