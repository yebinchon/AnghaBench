
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_7__ {scalar_t__ flags; int type; int qwattr; int lpattr; int dwattr; } ;
typedef int TAG ;
typedef TYPE_2__* PATTRINFO ;
typedef int LPCWSTR ;
typedef size_t DWORD ;


 scalar_t__ ATTRIBUTE_AVAILABLE ;
 int InitApphelp () ;
 int RtlCreateUnicodeStringFromAsciiz (TYPE_1__*,char const*) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;

 int TAG_TYPE_MASK ;


 scalar_t__ pSdbGetFileAttributes (int ,TYPE_2__**,size_t*) ;
 int pSdbTagToString (int) ;
 int strlen (char const*) ;
 int xprintf (char*,...) ;

int HandleDumpAttributes(int argc, char* argv[], int* pn, const char* opt)
{
    UNICODE_STRING FileName;
    PATTRINFO attr;
    DWORD num_attr, n;
    int argn = *pn;
    const char* arg;

    if (!InitApphelp())
        return 1;

    if (strlen(argv[argn]) > (strlen(opt)+1))
    {
        arg = argv[argn] + strlen(opt);
    }
    else if (argn+1 >= argc)
    {
        xprintf("Error: no image name specified\n");
        return 1;
    }
    else
    {
        arg = argv[argn+1];
        (*pn) += 1;
    }

    RtlCreateUnicodeStringFromAsciiz(&FileName, arg);

    if (pSdbGetFileAttributes(FileName.Buffer, &attr, &num_attr))
    {
        xprintf("Dumping attributes for %s\n", arg);
        for (n = 0; n < num_attr; ++n)
        {
            TAG tagType;
            LPCWSTR tagName;
            if (attr[n].flags != ATTRIBUTE_AVAILABLE)
                continue;

            tagName = pSdbTagToString(attr[n].type);

            tagType = attr[n].type & TAG_TYPE_MASK;
            switch (tagType)
            {
            case 130:
                xprintf("<%ls>0x%lx</%ls>\n", tagName, attr[n].dwattr, tagName);
                break;
            case 128:
                xprintf("<%ls>%ls</%ls>\n", tagName, attr[n].lpattr, tagName);
                break;
            case 129:
                xprintf("<%ls>0x%I64x</%ls>\n", tagName, attr[n].qwattr, tagName);
                break;
            default:
                xprintf("<!-- Unknown tag type: 0x%x (from 0x%x)\n", tagType, attr[n].type);
                break;
            }
        }
        xprintf("Done\n");
    }
    else
    {
        xprintf("Unable to get attributes from %s\n", arg);
    }


    RtlFreeUnicodeString(&FileName);
    return 0;
}
