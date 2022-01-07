
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int psz_name; } ;
typedef TYPE_1__ input_item_t ;
struct TYPE_6__ {TYPE_1__* p_item; } ;
typedef TYPE_2__ input_item_node_t ;


 int rdh_compar_type (TYPE_1__*,TYPE_1__*) ;
 int vlc_filenamecmp (int ,int ) ;

__attribute__((used)) static int rdh_compar_filename(const void *a, const void *b)
{
    input_item_node_t *const *na = a, *const *nb = b;
    input_item_t *ia = (*na)->p_item, *ib = (*nb)->p_item;

    int i_ret = rdh_compar_type(ia, ib);
    if (i_ret != 0)
        return i_ret;

    return vlc_filenamecmp(ia->psz_name, ib->psz_name);
}
