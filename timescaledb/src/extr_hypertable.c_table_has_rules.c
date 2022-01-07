
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rd_rules; } ;
typedef TYPE_1__* Relation ;



__attribute__((used)) static bool inline table_has_rules(Relation rel) { return rel->rd_rules != ((void*)0); }
