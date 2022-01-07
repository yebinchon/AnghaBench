
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transform_desc {struct transform_desc* upgrade_code; struct transform_desc* version_to; struct transform_desc* version_from; struct transform_desc* product_code_to; struct transform_desc* product_code_from; } ;


 int msi_free (struct transform_desc*) ;

__attribute__((used)) static void free_transform_desc( struct transform_desc *desc )
{
    msi_free( desc->product_code_from );
    msi_free( desc->product_code_to );
    msi_free( desc->version_from );
    msi_free( desc->version_to );
    msi_free( desc->upgrade_code );
    msi_free( desc );
}
