
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ip_port; } ;
struct TYPE_7__ {TYPE_1__* paths; int * path_creation_time; int * last_path_success; } ;
struct TYPE_6__ {int ip_port1; } ;
typedef TYPE_2__ Onion_Client_Paths ;
typedef TYPE_3__ Node_format ;


 unsigned int NUMBER_ONION_PATHS ;
 int ONION_PATH_LENGTH ;
 int ONION_PATH_MAX_LIFETIME ;
 int ONION_PATH_TIMEOUT ;
 scalar_t__ ipport_equal (int *,int *) ;
 scalar_t__ is_timeout (int ,int ) ;

__attribute__((used)) static int is_path_used(const Onion_Client_Paths *onion_paths, const Node_format *nodes)
{
    unsigned int i;

    for (i = 0; i < NUMBER_ONION_PATHS; ++i) {
        if (is_timeout(onion_paths->last_path_success[i], ONION_PATH_TIMEOUT)) {
            continue;
        }

        if (is_timeout(onion_paths->path_creation_time[i], ONION_PATH_MAX_LIFETIME)) {
            continue;
        }


        if (ipport_equal(&onion_paths->paths[i].ip_port1, &nodes[ONION_PATH_LENGTH - 1].ip_port)) {
            return i;
        }
    }

    return -1;
}
