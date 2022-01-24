#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 void* custom_link_source_clipboard_format ; 
 void* dataobject_clipboard_format ; 
 void* embed_source_clipboard_format ; 
 void* embedded_object_clipboard_format ; 
 void* filenameW_clipboard_format ; 
 void* filename_clipboard_format ; 
 void* link_source_clipboard_format ; 
 void* link_source_descriptor_clipboard_format ; 
 void* object_descriptor_clipboard_format ; 
 void* ole_private_data_clipboard_format ; 
 void* ownerlink_clipboard_format ; 
 void* wine_marshal_clipboard_format ; 

__attribute__((used)) static void FUNC1(void)
{
    static const WCHAR OwnerLink[] = {'O','w','n','e','r','L','i','n','k',0};
    static const WCHAR FileName[] = {'F','i','l','e','N','a','m','e',0};
    static const WCHAR FileNameW[] = {'F','i','l','e','N','a','m','e','W',0};
    static const WCHAR DataObject[] = {'D','a','t','a','O','b','j','e','c','t',0};
    static const WCHAR EmbeddedObject[] = {'E','m','b','e','d','d','e','d',' ','O','b','j','e','c','t',0};
    static const WCHAR EmbedSource[] = {'E','m','b','e','d',' ','S','o','u','r','c','e',0};
    static const WCHAR CustomLinkSource[] = {'C','u','s','t','o','m',' ','L','i','n','k',' ','S','o','u','r','c','e',0};
    static const WCHAR LinkSource[] = {'L','i','n','k',' ','S','o','u','r','c','e',0};
    static const WCHAR ObjectDescriptor[] = {'O','b','j','e','c','t',' ','D','e','s','c','r','i','p','t','o','r',0};
    static const WCHAR LinkSourceDescriptor[] = {'L','i','n','k',' ','S','o','u','r','c','e',' ',
                                                 'D','e','s','c','r','i','p','t','o','r',0};
    static const WCHAR OlePrivateData[] = {'O','l','e',' ','P','r','i','v','a','t','e',' ','D','a','t','a',0};

    static const WCHAR WineMarshalledDataObject[] = {'W','i','n','e',' ','M','a','r','s','h','a','l','l','e','d',' ',
                                                     'D','a','t','a','O','b','j','e','c','t',0};

    ownerlink_clipboard_format = FUNC0(OwnerLink);
    filename_clipboard_format = FUNC0(FileName);
    filenameW_clipboard_format = FUNC0(FileNameW);
    dataobject_clipboard_format = FUNC0(DataObject);
    embedded_object_clipboard_format = FUNC0(EmbeddedObject);
    embed_source_clipboard_format = FUNC0(EmbedSource);
    custom_link_source_clipboard_format = FUNC0(CustomLinkSource);
    link_source_clipboard_format = FUNC0(LinkSource);
    object_descriptor_clipboard_format = FUNC0(ObjectDescriptor);
    link_source_descriptor_clipboard_format = FUNC0(LinkSourceDescriptor);
    ole_private_data_clipboard_format = FUNC0(OlePrivateData);

    wine_marshal_clipboard_format = FUNC0(WineMarshalledDataObject);
}