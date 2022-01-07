
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int verbs; } ;
struct TYPE_5__ {int entry; int Argument; int Command; int Sequence; int Verb; } ;
typedef TYPE_1__ MSIVERB ;
typedef int MSIRECORD ;
typedef int MSIPACKAGE ;
typedef TYPE_2__ MSIEXTENSION ;
typedef int * LPVOID ;
typedef int LPCWSTR ;


 int ERR (char*,int ) ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int MSI_RecordGetInteger (int *,int) ;
 int MSI_RecordGetString (int *,int) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int ) ;
 int deformat_string (int *,int ,int *) ;
 int list_add_tail (int *,int *) ;
 TYPE_2__* load_given_extension (int *,int ) ;
 TYPE_1__* msi_alloc_zero (int) ;
 int msi_dup_record_field (int *,int) ;

__attribute__((used)) static UINT iterate_load_verb(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE* package = param;
    MSIVERB *verb;
    LPCWSTR buffer;
    MSIEXTENSION *extension;

    buffer = MSI_RecordGetString(row,1);
    extension = load_given_extension( package, buffer );
    if (!extension)
    {
        ERR("Verb unable to find loaded extension %s\n", debugstr_w(buffer));
        return ERROR_SUCCESS;
    }



    verb = msi_alloc_zero( sizeof(MSIVERB) );
    if (!verb)
        return ERROR_OUTOFMEMORY;

    verb->Verb = msi_dup_record_field(row,2);
    TRACE("loading verb %s\n",debugstr_w(verb->Verb));
    verb->Sequence = MSI_RecordGetInteger(row,3);

    buffer = MSI_RecordGetString(row,4);
    deformat_string(package,buffer,&verb->Command);

    buffer = MSI_RecordGetString(row,5);
    deformat_string(package,buffer,&verb->Argument);


    list_add_tail( &extension->verbs, &verb->entry );

    return ERROR_SUCCESS;
}
