
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int unk; int obj; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_2__ msi_handle_info ;
typedef size_t UINT ;
typedef size_t MSIHANDLE ;


 TYPE_2__* msi_alloc_zero (int) ;
 TYPE_2__* msi_realloc_zero (TYPE_2__*,int) ;
 TYPE_2__* msihandletable ;
 size_t msihandletable_size ;

__attribute__((used)) static MSIHANDLE alloc_handle_table_entry(void)
{
    UINT i;


    for(i=0; i<msihandletable_size; i++)
        if( !msihandletable[i].u.obj && !msihandletable[i].u.unk )
            break;
    if( i==msihandletable_size )
    {
        msi_handle_info *p;
        int newsize;
        if (msihandletable_size == 0)
        {
            newsize = 256;
            p = msi_alloc_zero(newsize*sizeof(msi_handle_info));
        }
        else
        {
            newsize = msihandletable_size * 2;
            p = msi_realloc_zero(msihandletable,
                            newsize*sizeof(msi_handle_info));
        }
        if (!p)
            return 0;
        msihandletable = p;
        msihandletable_size = newsize;
    }
    return i + 1;
}
