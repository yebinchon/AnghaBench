
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIRECORD ;
typedef int MSIPACKAGE ;
typedef int * LPVOID ;
typedef int LPCWSTR ;


 int ERROR_SUCCESS ;
 int MSI_RecordGetString (int *,int) ;
 int load_given_mime (int *,int ) ;

__attribute__((used)) static UINT iterate_all_mimes(MSIRECORD *rec, LPVOID param)
{
    LPCWSTR buffer;
    MSIPACKAGE* package = param;

    buffer = MSI_RecordGetString(rec,1);
    load_given_mime(package,buffer);
    return ERROR_SUCCESS;
}
