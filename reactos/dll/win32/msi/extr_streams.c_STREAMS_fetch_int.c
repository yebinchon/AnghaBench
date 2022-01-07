
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_6__ {TYPE_2__* db; } ;
struct TYPE_5__ {int num_streams; TYPE_1__* streams; } ;
struct TYPE_4__ {int str_index; } ;
typedef TYPE_3__ MSISTREAMSVIEW ;


 int ERROR_INVALID_PARAMETER ;
 int ERROR_NO_MORE_ITEMS ;
 int ERROR_SUCCESS ;
 int TRACE (char*,struct tagMSIVIEW*,int,int,int*) ;

__attribute__((used)) static UINT STREAMS_fetch_int(struct tagMSIVIEW *view, UINT row, UINT col, UINT *val)
{
    MSISTREAMSVIEW *sv = (MSISTREAMSVIEW *)view;

    TRACE("(%p, %d, %d, %p)\n", view, row, col, val);

    if (col != 1)
        return ERROR_INVALID_PARAMETER;

    if (row >= sv->db->num_streams)
        return ERROR_NO_MORE_ITEMS;

    *val = sv->db->streams[row].str_index;

    return ERROR_SUCCESS;
}
