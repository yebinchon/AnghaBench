
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;


 int ERROR_SUCCESS ;
 int load_all_files (TYPE_1__*) ;
 int load_all_folders (TYPE_1__*) ;
 int load_all_media (TYPE_1__*) ;
 int load_all_patches (TYPE_1__*) ;
 int msi_load_all_components (TYPE_1__*) ;
 int msi_load_all_features (TYPE_1__*) ;
 int msi_set_property (int ,int ,int ,int) ;
 int szCRoot ;
 int szCostingComplete ;
 int szRootDrive ;
 int szZero ;

__attribute__((used)) static UINT ACTION_CostInitialize(MSIPACKAGE *package)
{
    msi_set_property( package->db, szCostingComplete, szZero, -1 );
    msi_set_property( package->db, szRootDrive, szCRoot, -1 );

    load_all_folders( package );
    msi_load_all_components( package );
    msi_load_all_features( package );
    load_all_files( package );
    load_all_patches( package );
    load_all_media( package );

    return ERROR_SUCCESS;
}
