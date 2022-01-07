
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int action; int Feature; int Mime; void* ProgIDText; int ProgID; int Component; void* Extension; int entry; int verbs; } ;
struct TYPE_10__ {int extensions; } ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIEXTENSION ;
typedef int LPCWSTR ;


 int INSTALLSTATE_UNKNOWN ;
 int MSI_RecordGetString (int *,int) ;
 int TRACE (char*,int ) ;
 int debugstr_w (void*) ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 int load_given_mime (TYPE_1__*,int ) ;
 int load_given_progid (TYPE_1__*,void*) ;
 TYPE_2__* msi_alloc_zero (int) ;
 void* msi_dup_record_field (int *,int) ;
 int msi_get_loaded_component (TYPE_1__*,int ) ;
 int msi_get_loaded_feature (TYPE_1__*,int ) ;

__attribute__((used)) static MSIEXTENSION *load_extension( MSIPACKAGE* package, MSIRECORD *row )
{
    MSIEXTENSION *ext;
    LPCWSTR buffer;



    ext = msi_alloc_zero( sizeof(MSIEXTENSION) );
    if (!ext)
        return ((void*)0);

    list_init( &ext->verbs );

    list_add_tail( &package->extensions, &ext->entry );

    ext->Extension = msi_dup_record_field( row, 1 );
    TRACE("loading extension %s\n", debugstr_w(ext->Extension));

    buffer = MSI_RecordGetString( row, 2 );
    ext->Component = msi_get_loaded_component( package, buffer );

    ext->ProgIDText = msi_dup_record_field( row, 3 );
    ext->ProgID = load_given_progid( package, ext->ProgIDText );

    buffer = MSI_RecordGetString( row, 4 );
    ext->Mime = load_given_mime( package, buffer );

    buffer = MSI_RecordGetString(row,5);
    ext->Feature = msi_get_loaded_feature( package, buffer );
    ext->action = INSTALLSTATE_UNKNOWN;
    return ext;
}
