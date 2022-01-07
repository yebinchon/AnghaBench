
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum comclass_miscfields { ____Placeholder_comclass_miscfields } comclass_miscfields ;
typedef int DWORD ;






 int MiscStatus ;
 int MiscStatusContent ;
 int MiscStatusDocPrint ;
 int MiscStatusIcon ;
 int MiscStatusThumbnail ;

__attribute__((used)) static inline enum comclass_miscfields dvaspect_to_miscfields(DWORD aspect)
{
    switch (aspect)
    {
    case 131:
        return MiscStatusContent;
    case 128:
        return MiscStatusThumbnail;
    case 129:
        return MiscStatusIcon;
    case 130:
        return MiscStatusDocPrint;
    default:
        return MiscStatus;
    };
}
