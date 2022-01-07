
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int UINT ;
struct TYPE_4__ {unsigned int container_count; void* containers; int * container_formats; int classkey; } ;
typedef TYPE_1__ MetadataReaderInfo ;
typedef int HRESULT ;
typedef int GUID ;
typedef int BOOL ;


 int ComponentInfo_GetGuidList (int ,int ,unsigned int,int *,unsigned int*) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int TRUE ;
 int containers_keyname ;
 void* heap_calloc (unsigned int,int) ;
 int heap_free (int *) ;
 int read_metadata_patterns (TYPE_1__*,int *,void*) ;

__attribute__((used)) static BOOL read_metadata_info(MetadataReaderInfo *info)
{
    UINT format_count;
    GUID *formats;
    HRESULT hr;

    hr = ComponentInfo_GetGuidList(info->classkey, containers_keyname, 0, ((void*)0), &format_count);
    if (FAILED(hr)) return TRUE;

    formats = heap_calloc(format_count, sizeof(*formats));
    if (!formats) return FALSE;

    hr = ComponentInfo_GetGuidList(info->classkey, containers_keyname, format_count, formats,
                                   &format_count);
    if (FAILED(hr))
    {
        heap_free(formats);
        return FALSE;
    }

    info->container_formats = formats;
    info->container_count = format_count;

    if (format_count)
    {
        unsigned i;

        info->containers = heap_calloc(format_count, sizeof(*info->containers));
        if (!info->containers) return FALSE;

        for (i = 0; i < format_count; i++)
            read_metadata_patterns(info, info->container_formats + i, info->containers + i);
    }

    return TRUE;
}
