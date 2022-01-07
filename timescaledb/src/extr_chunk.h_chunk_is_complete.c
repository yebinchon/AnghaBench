
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* constraints; } ;
struct TYPE_7__ {scalar_t__ num_dimensions; } ;
struct TYPE_6__ {scalar_t__ num_dimension_constraints; } ;
typedef TYPE_2__ Hyperspace ;
typedef TYPE_3__ Chunk ;



__attribute__((used)) static inline bool
chunk_is_complete(Chunk *chunk, Hyperspace *space)
{
 return space->num_dimensions == chunk->constraints->num_dimension_constraints;
}
