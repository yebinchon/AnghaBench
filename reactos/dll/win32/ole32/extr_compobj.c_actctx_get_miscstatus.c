
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct comclassredirect_data {int miscmask; scalar_t__ miscstatusdocprint; scalar_t__ miscstatusthumbnail; scalar_t__ miscstatuscontent; scalar_t__ miscstatusicon; scalar_t__ miscstatus; } ;
typedef enum comclass_miscfields { ____Placeholder_comclass_miscfields } comclass_miscfields ;
typedef int data ;
struct TYPE_3__ {int cbSize; scalar_t__ lpData; } ;
typedef scalar_t__ DWORD ;
typedef int CLSID ;
typedef int BOOL ;
typedef TYPE_1__ ACTCTX_SECTION_KEYED_DATA ;


 int ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION ;
 int FALSE ;
 scalar_t__ FindActCtxSectionGuid (int ,int *,int ,int const*,TYPE_1__*) ;





 int TRUE ;
 int dvaspect_to_miscfields (scalar_t__) ;

BOOL actctx_get_miscstatus(const CLSID *clsid, DWORD aspect, DWORD *status)
{
    ACTCTX_SECTION_KEYED_DATA data;

    data.cbSize = sizeof(data);
    if (FindActCtxSectionGuid(0, ((void*)0), ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION,
                              clsid, &data))
    {
        struct comclassredirect_data *comclass = (struct comclassredirect_data*)data.lpData;
        enum comclass_miscfields misc = dvaspect_to_miscfields(aspect);

        if (!(comclass->miscmask & misc))
        {
            if (!(comclass->miscmask & 132))
            {
                *status = 0;
                return TRUE;
            }
            misc = 132;
        }

        switch (misc)
        {
        case 132:
            *status = comclass->miscstatus;
            break;
        case 129:
            *status = comclass->miscstatusicon;
            break;
        case 131:
            *status = comclass->miscstatuscontent;
            break;
        case 128:
            *status = comclass->miscstatusthumbnail;
            break;
        case 130:
            *status = comclass->miscstatusdocprint;
            break;
        default:
           ;
        };

        return TRUE;
    }
    else
        return FALSE;
}
