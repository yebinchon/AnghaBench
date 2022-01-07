
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ tgl_peer_t ;
struct in_ev {int dummy; } ;
typedef int json_t ;


 int assert (int) ;
 int free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int * json_object () ;
 scalar_t__ json_object_set (int *,char*,int ) ;
 int json_pack_peer (int ) ;
 int json_pack_updates (unsigned int) ;
 int json_string (char*) ;
 int mprintf (struct in_ev*,char*,char*) ;

void json_peer_update (struct in_ev *ev, tgl_peer_t *P, unsigned flags) {
}
