
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int custom_plans; int custom_private; } ;
typedef int Node ;
typedef TYPE_1__ CustomScan ;


 int linitial (int ) ;
 int linitial_oid (int ) ;
 scalar_t__ ts_chunk_dispatch_state_create (int ,int ) ;

__attribute__((used)) static Node *
create_chunk_dispatch_state(CustomScan *cscan)
{
 return (Node *) ts_chunk_dispatch_state_create(linitial_oid(cscan->custom_private),
               linitial(cscan->custom_plans));
}
