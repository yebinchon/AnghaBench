
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rd_rel; } ;
struct TYPE_4__ {scalar_t__ relreplident; } ;
typedef TYPE_2__* Relation ;


 scalar_t__ REPLICA_IDENTITY_DEFAULT ;

__attribute__((used)) static bool
table_has_replica_identity(Relation rel)
{
 return rel->rd_rel->relreplident != REPLICA_IDENTITY_DEFAULT;
}
