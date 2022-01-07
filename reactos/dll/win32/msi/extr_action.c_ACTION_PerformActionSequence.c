
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_10__ {int db; } ;
struct TYPE_9__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIPACKAGE ;
typedef int LPCWSTR ;


 int ACTION_PerformAction (TYPE_2__*,int ,int ) ;
 int ERR (char*) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 scalar_t__ MSICONDITION_FALSE ;
 scalar_t__ MSI_EvaluateConditionW (TYPE_2__*,int ) ;
 TYPE_1__* MSI_QueryGetRecord (int ,char const*,int ) ;
 int MSI_RecordGetString (TYPE_1__*,int) ;
 int SCRIPT_NONE ;
 int TRACE (char*) ;
 int msiobj_release (int *) ;
 scalar_t__ needs_ui_sequence (TYPE_2__*) ;

__attribute__((used)) static UINT ACTION_PerformActionSequence(MSIPACKAGE *package, UINT seq)
{
    UINT rc = ERROR_SUCCESS;
    MSIRECORD *row;

    static const WCHAR query[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
         '`','I','n','s','t','a','l','l','E','x','e','c','u','t','e',
         'S','e','q','u','e','n','c','e','`',' ', 'W','H','E','R','E',' ',
         '`','S','e','q','u','e','n','c','e','`',' ', '=',' ','%','i',0};
    static const WCHAR ui_query[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
     '`','I','n','s','t','a','l','l','U','I','S','e','q','u','e','n','c','e',
     '`', ' ', 'W','H','E','R','E',' ','`','S','e','q','u','e','n','c','e','`',
  ' ', '=',' ','%','i',0};

    if (needs_ui_sequence(package))
        row = MSI_QueryGetRecord(package->db, ui_query, seq);
    else
        row = MSI_QueryGetRecord(package->db, query, seq);

    if (row)
    {
        LPCWSTR action, cond;

        TRACE("Running the actions\n");


        cond = MSI_RecordGetString(row, 2);


        if (MSI_EvaluateConditionW(package, cond) == MSICONDITION_FALSE)
        {
            msiobj_release(&row->hdr);
            return ERROR_SUCCESS;
        }

        action = MSI_RecordGetString(row, 1);
        if (!action)
        {
            ERR("failed to fetch action\n");
            msiobj_release(&row->hdr);
            return ERROR_FUNCTION_FAILED;
        }

        rc = ACTION_PerformAction(package, action, SCRIPT_NONE);

        msiobj_release(&row->hdr);
    }

    return rc;
}
