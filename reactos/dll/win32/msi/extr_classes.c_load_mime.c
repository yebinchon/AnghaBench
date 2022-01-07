
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int entry; void* clsid; int Class; int suffix; int Extension; void* ContentType; } ;
struct TYPE_8__ {int mimes; } ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIMIME ;
typedef int LPCWSTR ;


 int MSI_RecordGetString (int *,int) ;
 int TRACE (char*,int ) ;
 int debugstr_w (void*) ;
 int list_add_tail (int *,int *) ;
 int load_given_class (TYPE_1__*,void*) ;
 int load_given_extension (TYPE_1__*,int ) ;
 TYPE_2__* msi_alloc_zero (int) ;
 void* msi_dup_record_field (int *,int) ;
 int strdupW (int ) ;

__attribute__((used)) static MSIMIME *load_mime( MSIPACKAGE* package, MSIRECORD *row )
{
    LPCWSTR extension;
    MSIMIME *mt;



    mt = msi_alloc_zero( sizeof(MSIMIME) );
    if (!mt)
        return mt;

    mt->ContentType = msi_dup_record_field( row, 1 );
    TRACE("loading mime %s\n", debugstr_w(mt->ContentType));

    extension = MSI_RecordGetString( row, 2 );
    mt->Extension = load_given_extension( package, extension );
    mt->suffix = strdupW( extension );

    mt->clsid = msi_dup_record_field( row, 3 );
    mt->Class = load_given_class( package, mt->clsid );

    list_add_tail( &package->mimes, &mt->entry );

    return mt;
}
