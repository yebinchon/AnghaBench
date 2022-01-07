
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hFile; } ;
typedef TYPE_1__ SIP_SUBJECTINFO ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 scalar_t__ GetFileSize (int ,int *) ;
 scalar_t__ PKCS_7_ASN_ENCODING ;
 int ReadFile (int ,int *,scalar_t__,scalar_t__*,int *) ;
 int SetLastError (int ) ;
 int TRACE (char*,TYPE_1__*,scalar_t__*,scalar_t__,scalar_t__*,int *) ;
 int TRUE ;
 scalar_t__ X509_ASN_ENCODING ;

__attribute__((used)) static BOOL WINTRUST_GetSignedMsgFromCatFile(SIP_SUBJECTINFO *pSubjectInfo,
 DWORD *pdwEncodingType, DWORD dwIndex, DWORD *pcbSignedDataMsg,
 BYTE *pbSignedDataMsg)
{
    BOOL ret;

    TRACE("(%p %p %d %p %p)\n", pSubjectInfo, pdwEncodingType, dwIndex,
          pcbSignedDataMsg, pbSignedDataMsg);

    if (!pbSignedDataMsg)
    {
        *pcbSignedDataMsg = GetFileSize(pSubjectInfo->hFile, ((void*)0));
         ret = TRUE;
    }
    else
    {
        DWORD len = GetFileSize(pSubjectInfo->hFile, ((void*)0));

        if (*pcbSignedDataMsg < len)
        {
            *pcbSignedDataMsg = len;
            SetLastError(ERROR_INSUFFICIENT_BUFFER);
            ret = FALSE;
        }
        else
        {
            ret = ReadFile(pSubjectInfo->hFile, pbSignedDataMsg, len,
             pcbSignedDataMsg, ((void*)0));
            if (ret)
                *pdwEncodingType = X509_ASN_ENCODING | PKCS_7_ASN_ENCODING;
        }
    }
    return ret;
}
