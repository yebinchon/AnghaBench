
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_3__ {int hFile; } ;
typedef TYPE_1__ SIP_SUBJECTINFO ;
typedef int LONG ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ERR (char*) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 void* EndGetI16 (int*) ;
 int EndGetI32 (int*) ;
 int FALSE ;
 scalar_t__ INVALID_SET_FILE_POINTER ;
 int PKCS_7_ASN_ENCODING ;
 int ReadFile (int ,int*,int,int*,int *) ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ SetFilePointer (int ,int,int *,int ) ;
 int SetLastError (int ) ;
 int TRACE (char*,...) ;
 int TRUE ;
 int WARN (char*) ;
 int X509_ASN_ENCODING ;
 int cfheadRESERVE_PRESENT ;
 int cfhead_Flags ;
 size_t cfhead_MajorVersion ;
 size_t cfhead_MinorVersion ;
 int cfhead_SIZEOF ;
 int cfhead_Signature ;
 int cfheadext_HeaderReserved ;
 int cfheadext_SIZEOF ;
 int cfsigninfo_CertOffset ;
 int cfsigninfo_CertSize ;
 int cfsigninfo_SIZEOF ;

__attribute__((used)) static BOOL WINTRUST_GetSignedMsgFromCabFile(SIP_SUBJECTINFO *pSubjectInfo,
 DWORD *pdwEncodingType, DWORD dwIndex, DWORD *pcbSignedDataMsg,
 BYTE *pbSignedDataMsg)
{
    int header_resv;
    LONG base_offset, cabsize;
    USHORT flags;
    BYTE buf[64];
    DWORD cert_offset, cert_size, dwRead;

    TRACE("(%p %p %d %p %p)\n", pSubjectInfo, pdwEncodingType, dwIndex,
          pcbSignedDataMsg, pbSignedDataMsg);


    base_offset = SetFilePointer(pSubjectInfo->hFile, 0L, ((void*)0), SEEK_CUR);

    if (SetFilePointer(pSubjectInfo->hFile, 0, ((void*)0), SEEK_END) == INVALID_SET_FILE_POINTER)
    {
        TRACE("seek error\n");
        return FALSE;
    }

    cabsize = SetFilePointer(pSubjectInfo->hFile, 0L, ((void*)0), SEEK_CUR);
    if ((cabsize == -1) || (base_offset == -1) ||
     (SetFilePointer(pSubjectInfo->hFile, 0, ((void*)0), SEEK_SET) == INVALID_SET_FILE_POINTER))
    {
        TRACE("seek error\n");
        return FALSE;
    }


    if (!ReadFile(pSubjectInfo->hFile, buf, cfhead_SIZEOF, &dwRead, ((void*)0)) ||
     dwRead != cfhead_SIZEOF)
    {
        TRACE("reading header failed\n");
        return FALSE;
    }


    if (EndGetI32(buf+cfhead_Signature) != 0x4643534d)
    {
        WARN("cabinet signature not present\n");
        return FALSE;
    }




    if ((buf[cfhead_MajorVersion] > 1) ||
        (buf[cfhead_MajorVersion] == 1 && buf[cfhead_MinorVersion] > 3))
    {
        WARN("cabinet format version > 1.3\n");
        return FALSE;
    }


    flags = EndGetI16(buf+cfhead_Flags);

    if (!(flags & cfheadRESERVE_PRESENT))
    {
        TRACE("no header present, not signed\n");
        return FALSE;
    }

    if (!ReadFile(pSubjectInfo->hFile, buf, cfheadext_SIZEOF, &dwRead, ((void*)0)) ||
     dwRead != cfheadext_SIZEOF)
    {
        ERR("bunk reserve-sizes?\n");
        return FALSE;
    }

    header_resv = EndGetI16(buf+cfheadext_HeaderReserved);
    if (!header_resv)
    {
        TRACE("no header_resv, not signed\n");
        return FALSE;
    }
    else if (header_resv < cfsigninfo_SIZEOF)
    {
        TRACE("header_resv too small, not signed\n");
        return FALSE;
    }

    if (header_resv > 60000)
    {
        WARN("WARNING; header reserved space > 60000\n");
    }

    if (!ReadFile(pSubjectInfo->hFile, buf, cfsigninfo_SIZEOF, &dwRead, ((void*)0)) ||
     dwRead != cfsigninfo_SIZEOF)
    {
        ERR("couldn't read reserve\n");
        return FALSE;
    }

    cert_offset = EndGetI32(buf+cfsigninfo_CertOffset);
    TRACE("cert_offset: %d\n", cert_offset);
    cert_size = EndGetI32(buf+cfsigninfo_CertSize);
    TRACE("cert_size: %d\n", cert_size);


    if (cert_offset > cabsize || cert_size > cabsize ||
     cert_offset + cert_size > cabsize)
    {
        WARN("offset beyond file, not attempting to read\n");
        return FALSE;
    }

    SetFilePointer(pSubjectInfo->hFile, base_offset, ((void*)0), SEEK_SET);
    if (!pbSignedDataMsg)
    {
        *pcbSignedDataMsg = cert_size;
        return TRUE;
    }
    if (*pcbSignedDataMsg < cert_size)
    {
        *pcbSignedDataMsg = cert_size;
        SetLastError(ERROR_INSUFFICIENT_BUFFER);
        return FALSE;
    }
    if (SetFilePointer(pSubjectInfo->hFile, cert_offset, ((void*)0), SEEK_SET) == INVALID_SET_FILE_POINTER)
    {
        ERR("couldn't seek to cert location\n");
        return FALSE;
    }
    if (!ReadFile(pSubjectInfo->hFile, pbSignedDataMsg, cert_size, &dwRead,
     ((void*)0)) || dwRead != cert_size)
    {
        ERR("couldn't read cert\n");
        SetFilePointer(pSubjectInfo->hFile, base_offset, ((void*)0), SEEK_SET);
        return FALSE;
    }




    *pdwEncodingType = X509_ASN_ENCODING | PKCS_7_ASN_ENCODING;

    SetFilePointer(pSubjectInfo->hFile, base_offset, ((void*)0), SEEK_SET);
    return TRUE;
}
