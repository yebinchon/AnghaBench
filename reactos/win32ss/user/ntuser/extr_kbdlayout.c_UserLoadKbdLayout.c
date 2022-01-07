
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_10__ {scalar_t__* fsCsb; } ;
struct TYPE_12__ {scalar_t__ ciACP; TYPE_2__ fs; int ciCharset; } ;
struct TYPE_9__ {int h; } ;
struct TYPE_11__ {scalar_t__ dwFontSigs; int iBaseCharset; scalar_t__ CodePage; TYPE_1__ head; int spkf; int hkl; } ;
typedef int PUNICODE_STRING ;
typedef int PULONG ;
typedef TYPE_3__* PKL ;
typedef int LCID ;
typedef int KL ;
typedef int HKL ;
typedef TYPE_4__ CHARSETINFO ;


 int ANSI_CHARSET ;
 scalar_t__ CP_ACP ;
 int ERR (char*,...) ;
 scalar_t__ FS_LATIN1 ;
 int NT_SUCCESS (int ) ;
 int RtlUnicodeStringToInteger (int ,int,int ) ;
 int TRACE (char*,int ,scalar_t__,...) ;
 int TYPE_KBDLAYOUT ;
 TYPE_3__* UserCreateObject (int ,int *,int *,int *,int ,int) ;
 int UserDeleteObject (int ,int ) ;
 int UserDereferenceObject (TYPE_3__*) ;
 int UserLoadKbdFile (int ) ;
 scalar_t__ co_IntGetCharsetInfo (int ,TYPE_4__*) ;
 int gHandleTable ;
 int gSystemCPCharSet ;
 scalar_t__ gSystemFS ;

__attribute__((used)) static PKL
UserLoadKbdLayout(PUNICODE_STRING pustrKLID, HKL hKL)
{
    LCID lCid;
    CHARSETINFO cs;
    PKL pKl;


    pKl = UserCreateObject(gHandleTable, ((void*)0), ((void*)0), ((void*)0), TYPE_KBDLAYOUT, sizeof(KL));
    if (!pKl)
    {
        ERR("Failed to create object!\n");
        return ((void*)0);
    }

    pKl->hkl = hKL;
    pKl->spkf = UserLoadKbdFile(pustrKLID);


    UserDereferenceObject(pKl);


    if (!pKl->spkf)
    {
        ERR("UserLoadKbdFile(%wZ) failed!\n", pustrKLID);
        UserDeleteObject(pKl->head.h, TYPE_KBDLAYOUT);
        return ((void*)0);
    }


    if (!NT_SUCCESS(RtlUnicodeStringToInteger(pustrKLID, 16, (PULONG)&lCid)))
    {
        ERR("RtlUnicodeStringToInteger failed for '%wZ'\n", pustrKLID);
        UserDeleteObject(pKl->head.h, TYPE_KBDLAYOUT);
        return ((void*)0);
    }

    TRACE("Language Identifiers %wZ LCID 0x%x\n", pustrKLID, lCid);
    if (co_IntGetCharsetInfo(lCid, &cs))
    {
       pKl->iBaseCharset = cs.ciCharset;
       pKl->dwFontSigs = cs.fs.fsCsb[0];
       pKl->CodePage = (USHORT)cs.ciACP;
       TRACE("Charset %u Font Sig %lu CodePage %u\n",
             pKl->iBaseCharset, pKl->dwFontSigs, pKl->CodePage);
    }
    else
    {
       pKl->iBaseCharset = ANSI_CHARSET;
       pKl->dwFontSigs = FS_LATIN1;
       pKl->CodePage = CP_ACP;
    }


    if (gSystemFS == 0)
    {
       gSystemCPCharSet = pKl->iBaseCharset;
       gSystemFS = pKl->dwFontSigs;
    }

    return pKl;
}
