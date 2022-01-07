
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__* PLONG ;
typedef int DWORD ;


 scalar_t__ ERROR_DATATYPE_MISMATCH ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ERROR_UNSUPPORTED_TYPE ;







 int RRF_RT_DWORD ;
 int RRF_RT_QWORD ;
 int RRF_RT_REG_BINARY ;
 int RRF_RT_REG_DWORD ;
 int RRF_RT_REG_EXPAND_SZ ;
 int RRF_RT_REG_MULTI_SZ ;
 int RRF_RT_REG_NONE ;
 int RRF_RT_REG_QWORD ;
 int RRF_RT_REG_SZ ;

__attribute__((used)) static VOID
RegpApplyRestrictions( DWORD dwFlags, DWORD dwType, DWORD cbData,
                       PLONG ret )
{

    if (*ret == ERROR_SUCCESS || *ret == ERROR_MORE_DATA)
    {
        DWORD dwMask = 0;

        switch (dwType)
        {
        case 130: dwMask = RRF_RT_REG_NONE; break;
        case 128: dwMask = RRF_RT_REG_SZ; break;
        case 132: dwMask = RRF_RT_REG_EXPAND_SZ; break;
        case 131: dwMask = RRF_RT_REG_MULTI_SZ; break;
        case 134: dwMask = RRF_RT_REG_BINARY; break;
        case 133: dwMask = RRF_RT_REG_DWORD; break;
        case 129: dwMask = RRF_RT_REG_QWORD; break;
        }

        if (dwFlags & dwMask)
        {

            if (dwType == 134)
            {
                DWORD cbExpect = 0;

                if ((dwFlags & RRF_RT_DWORD) == RRF_RT_DWORD)
                    cbExpect = 4;
                else if ((dwFlags & RRF_RT_QWORD) == RRF_RT_QWORD)
                    cbExpect = 8;

                if (cbExpect && cbData != cbExpect)
                    *ret = ERROR_DATATYPE_MISMATCH;
            }
        }
        else *ret = ERROR_UNSUPPORTED_TYPE;
    }
}
