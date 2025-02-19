
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* feature; TYPE_3__* package; } ;
typedef TYPE_1__ _ilfs ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {void* Feature; int entry; void* ActionRequest; void* Action; void* Installed; void* Attributes; void* Directory; void* Level; void* Display; void* Description; void* Title; void* Feature_Parent; int Components; int Children; } ;
struct TYPE_13__ {int db; int features; } ;
struct TYPE_12__ {int hdr; } ;
typedef int MSIRECORD ;
typedef TYPE_2__ MSIQUERY ;
typedef TYPE_3__ MSIPACKAGE ;
typedef TYPE_4__ MSIFEATURE ;
typedef TYPE_3__* LPVOID ;


 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 void* INSTALLSTATE_UNKNOWN ;
 scalar_t__ MSI_IterateRecords (TYPE_2__*,int *,int ,TYPE_1__*) ;
 scalar_t__ MSI_OpenQuery (int ,TYPE_2__**,char const*,void*) ;
 void* MSI_RecordGetInteger (int *,int) ;
 int MSI_RecordIsNull (int *,int) ;
 int TRACE (char*,int ) ;
 int debugstr_w (void*) ;
 int iterate_load_featurecomponents ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 TYPE_4__* msi_alloc_zero (int) ;
 void* msi_dup_record_field (int *,int) ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT load_feature(MSIRECORD * row, LPVOID param)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','`','C','o','m','p','o','n','e','n','t','_','`',
         ' ','F','R','O','M',' ','`','F','e','a','t','u','r','e',
         'C','o','m','p','o','n','e','n','t','s','`',' ','W','H','E','R','E',' ',
         '`','F','e', 'a','t','u','r','e','_','`',' ','=','\'','%','s','\'',0};
    MSIPACKAGE *package = param;
    MSIFEATURE *feature;
    MSIQUERY *view;
    _ilfs ilfs;
    UINT rc;



    feature = msi_alloc_zero( sizeof (MSIFEATURE) );
    if (!feature)
        return ERROR_NOT_ENOUGH_MEMORY;

    list_init( &feature->Children );
    list_init( &feature->Components );

    feature->Feature = msi_dup_record_field( row, 1 );

    TRACE("Loading feature %s\n",debugstr_w(feature->Feature));

    feature->Feature_Parent = msi_dup_record_field( row, 2 );
    feature->Title = msi_dup_record_field( row, 3 );
    feature->Description = msi_dup_record_field( row, 4 );

    if (!MSI_RecordIsNull(row,5))
        feature->Display = MSI_RecordGetInteger(row,5);

    feature->Level= MSI_RecordGetInteger(row,6);
    feature->Directory = msi_dup_record_field( row, 7 );
    feature->Attributes = MSI_RecordGetInteger(row,8);

    feature->Installed = INSTALLSTATE_UNKNOWN;
    feature->Action = INSTALLSTATE_UNKNOWN;
    feature->ActionRequest = INSTALLSTATE_UNKNOWN;

    list_add_tail( &package->features, &feature->entry );



    rc = MSI_OpenQuery( package->db, &view, query, feature->Feature );
    if (rc != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    ilfs.package = package;
    ilfs.feature = feature;

    rc = MSI_IterateRecords(view, ((void*)0), iterate_load_featurecomponents , &ilfs);
    msiobj_release(&view->hdr);
    return rc;
}
