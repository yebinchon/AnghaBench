
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct strsection_header {int dummy; } ;
struct string_index {int name_offset; int name_len; int data_offset; int data_len; int rosterindex; int hash; } ;
struct progidredirect_data {int size; int clsid_offset; scalar_t__ reserved; } ;
typedef scalar_t__ WCHAR ;
struct TYPE_4__ {int Length; int MaximumLength; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
typedef int GUID ;
typedef int BYTE ;


 int HASH_STRING_ALGORITHM_X65599 ;
 int RtlHashUnicodeString (TYPE_1__*,int ,int ,int *) ;
 int RtlInitUnicodeString (TYPE_1__*,scalar_t__ const*) ;
 int TRUE ;
 int aligned_string_len (int ) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;

__attribute__((used)) static void write_progid_record(struct strsection_header *section, const WCHAR *progid, const GUID *alias,
    struct string_index **index, ULONG *data_offset, ULONG *global_offset, ULONG rosterindex)
{
    struct progidredirect_data *data;
    UNICODE_STRING str;
    GUID *guid_ptr;
    WCHAR *ptrW;




    RtlInitUnicodeString(&str, progid);
    RtlHashUnicodeString(&str, TRUE, HASH_STRING_ALGORITHM_X65599, &(*index)->hash);

    (*index)->name_offset = *data_offset;
    (*index)->name_len = str.Length;
    (*index)->data_offset = (*index)->name_offset + aligned_string_len(str.MaximumLength);
    (*index)->data_len = sizeof(*data);
    (*index)->rosterindex = rosterindex;

    *data_offset += aligned_string_len(str.MaximumLength);


    data = (struct progidredirect_data*)((BYTE*)section + *data_offset);
    data->size = sizeof(*data);
    data->reserved = 0;
    data->clsid_offset = *global_offset;


    ptrW = (WCHAR*)((BYTE*)section + (*index)->name_offset);
    memcpy(ptrW, progid, (*index)->name_len);
    ptrW[(*index)->name_len/sizeof(WCHAR)] = 0;


    guid_ptr = (GUID*)((BYTE*)section + data->clsid_offset);
    *guid_ptr = *alias;


    *global_offset += sizeof(GUID);
    *data_offset += data->size;
    (*index) += 1;
}
