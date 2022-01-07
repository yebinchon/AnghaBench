
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int num_streams_allocated; int * streams; } ;
typedef int MSISTREAM ;
typedef TYPE_1__ MSIDATABASE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int * msi_alloc_zero (int) ;
 int * msi_realloc_zero (int *,int) ;

__attribute__((used)) static BOOL streams_resize_table( MSIDATABASE *db, UINT size )
{
    if (!db->num_streams_allocated)
    {
        if (!(db->streams = msi_alloc_zero( size * sizeof(MSISTREAM) ))) return FALSE;
        db->num_streams_allocated = size;
        return TRUE;
    }
    while (size >= db->num_streams_allocated)
    {
        MSISTREAM *tmp;
        UINT new_size = db->num_streams_allocated * 2;
        if (!(tmp = msi_realloc_zero( db->streams, new_size * sizeof(MSISTREAM) ))) return FALSE;
        db->streams = tmp;
        db->num_streams_allocated = new_size;
    }
    return TRUE;
}
