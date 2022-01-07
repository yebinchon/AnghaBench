
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ num_rows; int view; TYPE_1__* db; } ;
struct TYPE_4__ {int strings; } ;
typedef TYPE_2__ MSISTORAGESVIEW ;
typedef int MSIRECORD ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 int MSI_RecordGetString (int *,int) ;
 int STORAGES_fetch_int (int *,scalar_t__,int,scalar_t__*) ;
 scalar_t__ msi_string2id (int ,int ,int,scalar_t__*) ;

__attribute__((used)) static UINT storages_find_row(MSISTORAGESVIEW *sv, MSIRECORD *rec, UINT *row)
{
    LPCWSTR str;
    UINT r, i, id, data;

    str = MSI_RecordGetString(rec, 1);
    r = msi_string2id(sv->db->strings, str, -1, &id);
    if (r != ERROR_SUCCESS)
        return r;

    for (i = 0; i < sv->num_rows; i++)
    {
        STORAGES_fetch_int(&sv->view, i, 1, &data);

        if (data == id)
        {
            *row = i;
            return ERROR_SUCCESS;
        }
    }

    return ERROR_FUNCTION_FAILED;
}
