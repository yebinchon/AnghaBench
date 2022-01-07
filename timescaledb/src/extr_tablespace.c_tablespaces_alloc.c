
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int capacity; void* tablespaces; scalar_t__ num_tablespaces; } ;
typedef TYPE_1__ Tablespaces ;
typedef int Tablespace ;


 void* palloc (int) ;

__attribute__((used)) static Tablespaces *
tablespaces_alloc(int capacity)
{
 Tablespaces *tspcs;

 tspcs = palloc(sizeof(Tablespaces));
 tspcs->capacity = capacity;
 tspcs->num_tablespaces = 0;
 tspcs->tablespaces = palloc(sizeof(Tablespace) * tspcs->capacity);

 return tspcs;
}
