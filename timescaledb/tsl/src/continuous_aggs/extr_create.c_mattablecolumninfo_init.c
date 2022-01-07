
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int matpartcolno; int * matpartcolname; int mat_groupcolname_list; int * partial_grouplist; int * partial_seltlist; int * matcollist; } ;
typedef TYPE_1__ MatTableColumnInfo ;
typedef int List ;


 int NIL ;

__attribute__((used)) static void
mattablecolumninfo_init(MatTableColumnInfo *matcolinfo, List *collist, List *tlist, List *grouplist)
{
 matcolinfo->matcollist = collist;
 matcolinfo->partial_seltlist = tlist;
 matcolinfo->partial_grouplist = grouplist;
 matcolinfo->mat_groupcolname_list = NIL;
 matcolinfo->matpartcolno = -1;
 matcolinfo->matpartcolname = ((void*)0);
}
