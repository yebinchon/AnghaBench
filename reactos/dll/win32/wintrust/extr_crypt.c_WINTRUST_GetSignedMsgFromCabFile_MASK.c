#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int USHORT ;
struct TYPE_3__ {int /*<<< orphan*/  hFile; } ;
typedef  TYPE_1__ SIP_SUBJECTINFO ;
typedef  int LONG ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 void* FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ INVALID_SET_FILE_POINTER ; 
 int PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
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

__attribute__((used)) static BOOL FUNC8(SIP_SUBJECTINFO *pSubjectInfo,
 DWORD *pdwEncodingType, DWORD dwIndex, DWORD *pcbSignedDataMsg,
 BYTE *pbSignedDataMsg)
{
    int header_resv;
    LONG base_offset, cabsize;
    USHORT flags;
    BYTE buf[64];
    DWORD cert_offset, cert_size, dwRead;

    FUNC6("(%p %p %d %p %p)\n", pSubjectInfo, pdwEncodingType, dwIndex,
          pcbSignedDataMsg, pbSignedDataMsg);

    /* get basic offset & size info */
    base_offset = FUNC4(pSubjectInfo->hFile, 0L, NULL, SEEK_CUR);

    if (FUNC4(pSubjectInfo->hFile, 0, NULL, SEEK_END) == INVALID_SET_FILE_POINTER)
    {
        FUNC6("seek error\n");
        return FALSE;
    }

    cabsize = FUNC4(pSubjectInfo->hFile, 0L, NULL, SEEK_CUR);
    if ((cabsize == -1) || (base_offset == -1) ||
     (FUNC4(pSubjectInfo->hFile, 0, NULL, SEEK_SET) == INVALID_SET_FILE_POINTER))
    {
        FUNC6("seek error\n");
        return FALSE;
    }

    /* read in the CFHEADER */
    if (!FUNC3(pSubjectInfo->hFile, buf, cfhead_SIZEOF, &dwRead, NULL) ||
     dwRead != cfhead_SIZEOF)
    {
        FUNC6("reading header failed\n");
        return FALSE;
    }

    /* check basic MSCF signature */
    if (FUNC2(buf+cfhead_Signature) != 0x4643534d)
    {
        FUNC7("cabinet signature not present\n");
        return FALSE;
    }

    /* Ignore the number of folders and files and the set and cabinet IDs */

    /* check the header revision */
    if ((buf[cfhead_MajorVersion] > 1) ||
        (buf[cfhead_MajorVersion] == 1 && buf[cfhead_MinorVersion] > 3))
    {
        FUNC7("cabinet format version > 1.3\n");
        return FALSE;
    }

    /* pull the flags out */
    flags = FUNC1(buf+cfhead_Flags);

    if (!(flags & cfheadRESERVE_PRESENT))
    {
        FUNC6("no header present, not signed\n");
        return FALSE;
    }

    if (!FUNC3(pSubjectInfo->hFile, buf, cfheadext_SIZEOF, &dwRead, NULL) ||
     dwRead != cfheadext_SIZEOF)
    {
        FUNC0("bunk reserve-sizes?\n");
        return FALSE;
    }

    header_resv = FUNC1(buf+cfheadext_HeaderReserved);
    if (!header_resv)
    {
        FUNC6("no header_resv, not signed\n");
        return FALSE;
    }
    else if (header_resv < cfsigninfo_SIZEOF)
    {
        FUNC6("header_resv too small, not signed\n");
        return FALSE;
    }

    if (header_resv > 60000)
    {
        FUNC7("WARNING; header reserved space > 60000\n");
    }

    if (!FUNC3(pSubjectInfo->hFile, buf, cfsigninfo_SIZEOF, &dwRead, NULL) ||
     dwRead != cfsigninfo_SIZEOF)
    {
        FUNC0("couldn't read reserve\n");
        return FALSE;
    }

    cert_offset = FUNC2(buf+cfsigninfo_CertOffset);
    FUNC6("cert_offset: %d\n", cert_offset);
    cert_size = FUNC2(buf+cfsigninfo_CertSize);
    FUNC6("cert_size: %d\n", cert_size);

    /* The redundant checks are to avoid wraparound */
    if (cert_offset > cabsize || cert_size > cabsize ||
     cert_offset + cert_size > cabsize)
    {
        FUNC7("offset beyond file, not attempting to read\n");
        return FALSE;
    }

    FUNC4(pSubjectInfo->hFile, base_offset, NULL, SEEK_SET);
    if (!pbSignedDataMsg)
    {
        *pcbSignedDataMsg = cert_size;
        return TRUE;
    }
    if (*pcbSignedDataMsg < cert_size)
    {
        *pcbSignedDataMsg = cert_size;
        FUNC5(ERROR_INSUFFICIENT_BUFFER);
        return FALSE;
    }
    if (FUNC4(pSubjectInfo->hFile, cert_offset, NULL, SEEK_SET) == INVALID_SET_FILE_POINTER)
    {
        FUNC0("couldn't seek to cert location\n");
        return FALSE;
    }
    if (!FUNC3(pSubjectInfo->hFile, pbSignedDataMsg, cert_size, &dwRead,
     NULL) || dwRead != cert_size)
    {
        FUNC0("couldn't read cert\n");
        FUNC4(pSubjectInfo->hFile, base_offset, NULL, SEEK_SET);
        return FALSE;
    }
    /* The encoding of the files I've seen appears to be in ASN.1
     * format, and there isn't a field indicating the type, so assume it
     * always is.
     */
    *pdwEncodingType = X509_ASN_ENCODING | PKCS_7_ASN_ENCODING;
    /* Restore base offset */
    FUNC4(pSubjectInfo->hFile, base_offset, NULL, SEEK_SET);
    return TRUE;
}