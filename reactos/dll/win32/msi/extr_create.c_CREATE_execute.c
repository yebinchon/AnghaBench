
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_3__ {int col_info; int name; int db; int hold; scalar_t__ bIsTemp; } ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSICREATEVIEW ;
typedef int BOOL ;


 int ERROR_SUCCESS ;
 int MSICONDITION_FALSE ;
 int MSICONDITION_TRUE ;
 int TRACE (char*,TYPE_1__*,int ,char*) ;
 int debugstr_w (int ) ;
 int msi_create_table (int ,int ,int ,int ) ;

__attribute__((used)) static UINT CREATE_execute( struct tagMSIVIEW *view, MSIRECORD *record )
{
    MSICREATEVIEW *cv = (MSICREATEVIEW*)view;
    BOOL persist = (cv->bIsTemp) ? MSICONDITION_FALSE : MSICONDITION_TRUE;

    TRACE("%p Table %s (%s)\n", cv, debugstr_w(cv->name),
          cv->bIsTemp?"temporary":"permanent");

    if (cv->bIsTemp && !cv->hold)
        return ERROR_SUCCESS;

    return msi_create_table( cv->db, cv->name, cv->col_info, persist );
}
