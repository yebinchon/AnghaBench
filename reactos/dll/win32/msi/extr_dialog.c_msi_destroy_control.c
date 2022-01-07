
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hDll; struct TYPE_4__* type; struct TYPE_4__* tabnext; scalar_t__ hIcon; scalar_t__ hBitmap; struct TYPE_4__* value; struct TYPE_4__* property; int entry; } ;
typedef TYPE_1__ msi_control ;


 int DeleteObject (scalar_t__) ;
 int DestroyIcon (scalar_t__) ;
 int FreeLibrary (scalar_t__) ;
 int list_remove (int *) ;
 int msi_free (TYPE_1__*) ;

__attribute__((used)) static void msi_destroy_control( msi_control *t )
{
    list_remove( &t->entry );

    msi_free( t->property );
    msi_free( t->value );
    if( t->hBitmap )
        DeleteObject( t->hBitmap );
    if( t->hIcon )
        DestroyIcon( t->hIcon );
    msi_free( t->tabnext );
    msi_free( t->type );
    if (t->hDll)
        FreeLibrary( t->hDll );
    msi_free( t );
}
