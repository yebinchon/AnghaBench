
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int partial_grouplist; int partial_seltlist; } ;
struct TYPE_8__ {int * sortClause; int * havingQual; int groupClause; int targetList; void* jointree; void* rtable; } ;
typedef TYPE_1__ Query ;
typedef TYPE_2__ MatTableColumnInfo ;


 int CAGG_MAKEQUERY (TYPE_1__*,TYPE_1__*) ;
 void* copyObject (void*) ;

__attribute__((used)) static Query *
mattablecolumninfo_get_partial_select_query(MatTableColumnInfo *mattblinfo, Query *userview_query)
{
 Query *partial_selquery;
 CAGG_MAKEQUERY(partial_selquery, userview_query);
 partial_selquery->rtable = copyObject(userview_query->rtable);
 partial_selquery->jointree = copyObject(userview_query->jointree);
 partial_selquery->targetList = mattblinfo->partial_seltlist;
 partial_selquery->groupClause = mattblinfo->partial_grouplist;
 partial_selquery->havingQual = ((void*)0);
 partial_selquery->sortClause = ((void*)0);
 return partial_selquery;
}
