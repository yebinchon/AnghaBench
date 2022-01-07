
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteCriticalSection (int *) ;
 int MSI_handle_cs ;
 int MSI_object_cs ;
 int msi_free (int *) ;
 int * msihandletable ;
 scalar_t__ msihandletable_size ;

void msi_free_handle_table(void)
{
    msi_free( msihandletable );
    msihandletable = ((void*)0);
    msihandletable_size = 0;
    DeleteCriticalSection(&MSI_handle_cs);
    DeleteCriticalSection(&MSI_object_cs);
}
