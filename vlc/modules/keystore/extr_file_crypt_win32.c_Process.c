
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {size_t cbData; int * pbData; } ;
typedef scalar_t__ (* ProcessFunc ) (TYPE_1__*,int *,int *,int *,int *,int ,TYPE_1__*) ;
typedef TYPE_1__ DATA_BLOB ;
typedef int BYTE ;


 int CRYPTPROTECT_UI_FORBIDDEN ;
 scalar_t__ FALSE ;
 int LocalFree (int *) ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static size_t Process(const uint8_t *p_src, size_t i_src_len, uint8_t **pp_dst, ProcessFunc pf_process)
{
    DATA_BLOB input_blob =
    {
        .cbData = i_src_len,
        .pbData = (BYTE*)p_src
    };
    DATA_BLOB output_blob;

    if (pf_process( &input_blob, ((void*)0), ((void*)0), ((void*)0), ((void*)0), CRYPTPROTECT_UI_FORBIDDEN, &output_blob) == FALSE)
        return 0;
    *pp_dst = malloc(output_blob.cbData);
    if( unlikely( *pp_dst == ((void*)0) ) )
    {
        LocalFree( output_blob.pbData );
        return 0;
    }
    memcpy( *pp_dst, output_blob.pbData, output_blob.cbData );
    LocalFree( output_blob.pbData );
    return output_blob.cbData;
}
