
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int statement_list_t ;


 int build_iface_list (int const*,int ***,int*) ;
 int cmp_iid ;
 int qsort (int **,int,int,int ) ;

__attribute__((used)) static type_t **sort_interfaces( const statement_list_t *stmts, int *count )
{
    type_t **ifaces = ((void*)0);

    *count = 0;
    build_iface_list( stmts, &ifaces, count );
    qsort( ifaces, *count, sizeof(*ifaces), cmp_iid );
    return ifaces;
}
