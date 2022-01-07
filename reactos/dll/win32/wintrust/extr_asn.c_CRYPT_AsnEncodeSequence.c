
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AsnEncodeSequenceItem {size_t size; int pvStructInfo; int (* encodeFunc ) (size_t,int *,int ,int *,size_t*) ;} ;
typedef size_t DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ASN_SEQUENCE ;
 int CRYPT_EncodeLen (size_t,int *,size_t*) ;
 int ERROR_MORE_DATA ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,struct AsnEncodeSequenceItem*,...) ;
 int TRUE ;
 int stub1 (size_t,int *,int ,int *,size_t*) ;
 int stub2 (size_t,int *,int ,int *,size_t*) ;

__attribute__((used)) static BOOL CRYPT_AsnEncodeSequence(DWORD dwCertEncodingType,
 struct AsnEncodeSequenceItem items[], DWORD cItem, BYTE *pbEncoded,
 DWORD *pcbEncoded)
{
    BOOL ret;
    DWORD i, dataLen = 0;

    TRACE("%p, %d, %p, %d\n", items, cItem, pbEncoded, *pcbEncoded);
    for (i = 0, ret = TRUE; ret && i < cItem; i++)
    {
        ret = items[i].encodeFunc(dwCertEncodingType, ((void*)0),
         items[i].pvStructInfo, ((void*)0), &items[i].size);

        if (!ret)
            *pcbEncoded = items[i].size;
        dataLen += items[i].size;
    }
    if (ret)
    {
        DWORD lenBytes, bytesNeeded;

        CRYPT_EncodeLen(dataLen, ((void*)0), &lenBytes);
        bytesNeeded = 1 + lenBytes + dataLen;
        if (!pbEncoded)
            *pcbEncoded = bytesNeeded;
        else if (*pcbEncoded < bytesNeeded)
        {
            *pcbEncoded = bytesNeeded;
            SetLastError(ERROR_MORE_DATA);
            ret = FALSE;
        }
        else
        {
            *pcbEncoded = bytesNeeded;
            *pbEncoded++ = ASN_SEQUENCE;
            CRYPT_EncodeLen(dataLen, pbEncoded, &lenBytes);
            pbEncoded += lenBytes;
            for (i = 0; ret && i < cItem; i++)
            {
                ret = items[i].encodeFunc(dwCertEncodingType, ((void*)0),
                 items[i].pvStructInfo, pbEncoded, &items[i].size);

                if (!ret)
                    *pcbEncoded = items[i].size;
                pbEncoded += items[i].size;
            }
        }
    }
    TRACE("returning %d\n", ret);
    return ret;
}
