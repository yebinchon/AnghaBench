
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int bInheritHandle; int lpSecurityDescriptor; int nLength; } ;
struct TYPE_6__ {int hGlobal; } ;
struct TYPE_7__ {int pUnkForRelease; TYPE_1__ u; int tymed; } ;
struct TYPE_9__ {size_t grfBindInfoF; size_t dwBindVerb; int dwReserved; int pUnk; int iid; TYPE_3__ securityAttributes; int dwCodePage; int dwOptionsFlags; int dwOptions; int cbstgmedData; int szCustomVerb; TYPE_2__ stgmedData; int szExtraInfo; int cbSize; } ;
typedef TYPE_4__ BINDINFO ;


 size_t BINDINFOF_URLENCODEDEXTRAINFO ;
 size_t BINDVERB_CUSTOM ;
 int TRACE (char*,int ,int ,int ,int ,int ,char*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int debugstr_guid (int *) ;
 int debugstr_w (int ) ;

__attribute__((used)) static void dump_BINDINFO(BINDINFO *bi)
{
    static const char * const BINDINFOF_str[] = {
        "#0",
        "BINDINFOF_URLENCODESTGMEDDATA",
        "BINDINFOF_URLENCODEDEXTRAINFO"
    };

    static const char * const BINDVERB_str[] = {
        "BINDVERB_GET",
        "BINDVERB_POST",
        "BINDVERB_PUT",
        "BINDVERB_CUSTOM"
    };

    TRACE("\n"
            "BINDINFO = {\n"
            "    %d, %s,\n"
            "    {%d, %p, %p},\n"
            "    %s,\n"
            "    %s,\n"
            "    %s,\n"
            "    %d, %08x, %d, %d\n"
            "    {%d %p %x},\n"
            "    %s\n"
            "    %p, %d\n"
            "}\n",

            bi->cbSize, debugstr_w(bi->szExtraInfo),
            bi->stgmedData.tymed, bi->stgmedData.u.hGlobal, bi->stgmedData.pUnkForRelease,
            bi->grfBindInfoF > BINDINFOF_URLENCODEDEXTRAINFO
                ? "unknown" : BINDINFOF_str[bi->grfBindInfoF],
            bi->dwBindVerb > BINDVERB_CUSTOM
                ? "unknown" : BINDVERB_str[bi->dwBindVerb],
            debugstr_w(bi->szCustomVerb),
            bi->cbstgmedData, bi->dwOptions, bi->dwOptionsFlags, bi->dwCodePage,
            bi->securityAttributes.nLength,
            bi->securityAttributes.lpSecurityDescriptor,
            bi->securityAttributes.bInheritHandle,
            debugstr_guid(&bi->iid),
            bi->pUnk, bi->dwReserved
            );
}
