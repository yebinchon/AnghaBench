
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_4__ {TYPE_1__* db; int num_cols; } ;
struct TYPE_3__ {int num_streams; } ;
typedef TYPE_2__ MSISTREAMSVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,struct tagMSIVIEW*,int *,int *) ;

__attribute__((used)) static UINT STREAMS_get_dimensions(struct tagMSIVIEW *view, UINT *rows, UINT *cols)
{
    MSISTREAMSVIEW *sv = (MSISTREAMSVIEW *)view;

    TRACE("(%p, %p, %p)\n", view, rows, cols);

    if (cols) *cols = sv->num_cols;
    if (rows) *rows = sv->db->num_streams;

    return ERROR_SUCCESS;
}
