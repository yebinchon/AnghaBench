
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_11__ {scalar_t__ path_num; } ;
struct TYPE_10__ {int public_key; int ip_port; } ;
struct TYPE_8__ {TYPE_6__* paths; scalar_t__* last_path_used_times; int * last_path_success; } ;
struct TYPE_9__ {scalar_t__ num_friends; TYPE_1__ onion_paths_friends; TYPE_1__ onion_paths_self; } ;
typedef TYPE_1__ Onion_Client_Paths ;
typedef TYPE_2__ Onion_Client ;
typedef TYPE_3__ Node_format ;


 scalar_t__ NUMBER_ONION_PATHS ;
 int ONION_PATH_LENGTH ;
 int onion_add_path_node (TYPE_2__*,int ,int ) ;
 scalar_t__ onion_path_to_nodes (TYPE_3__*,int,TYPE_6__*) ;
 int unix_time () ;

__attribute__((used)) static uint32_t set_path_timeouts(Onion_Client *onion_c, uint32_t num, uint32_t path_num)
{
    if (num > onion_c->num_friends)
        return -1;

    Onion_Client_Paths *onion_paths;

    if (num == 0) {
        onion_paths = &onion_c->onion_paths_self;
    } else {
        onion_paths = &onion_c->onion_paths_friends;
    }

    if (onion_paths->paths[path_num % NUMBER_ONION_PATHS].path_num == path_num) {
        onion_paths->last_path_success[path_num % NUMBER_ONION_PATHS] = unix_time();
        onion_paths->last_path_used_times[path_num % NUMBER_ONION_PATHS] = 0;

        Node_format nodes[ONION_PATH_LENGTH];

        if (onion_path_to_nodes(nodes, ONION_PATH_LENGTH, &onion_paths->paths[path_num % NUMBER_ONION_PATHS]) == 0) {
            unsigned int i;

            for (i = 0; i < ONION_PATH_LENGTH; ++i) {
                onion_add_path_node(onion_c, nodes[i].ip_port, nodes[i].public_key);
            }
        }

        return path_num;
    }

    return ~0;
}
