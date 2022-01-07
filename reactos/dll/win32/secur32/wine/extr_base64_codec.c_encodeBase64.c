
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SECURITY_STATUS ;
typedef int* PBYTE ;


 int SEC_E_BUFFER_TOO_SMALL ;
 int SEC_E_OK ;
 int TRACE (char*,int,int) ;
 char* b64 ;

SECURITY_STATUS encodeBase64(PBYTE in_buf, int in_len, char* out_buf,
        int max_len, int *out_len)
{
    int div, i;
    PBYTE d = in_buf;
    int bytes = (in_len*8 + 5)/6, pad_bytes = (bytes % 4) ? 4 - (bytes % 4) : 0;

    TRACE("bytes is %d, pad bytes is %d\n", bytes, pad_bytes);
    *out_len = bytes + pad_bytes;

    if(bytes + pad_bytes + 1 > max_len)
        return SEC_E_BUFFER_TOO_SMALL;


    div = in_len / 3;

    i = 0;
    while(div > 0)
    {

        out_buf[i + 0] = b64[ ( d[0] >> 2) & 0x3f ];


        out_buf[i + 1] = b64[ ((d[0] << 4) & 0x30) | (d[1] >> 4 & 0x0f)];


        out_buf[i + 2] = b64[ ((d[1] << 2) & 0x3c) | (d[2] >> 6 & 0x03)];

        out_buf[i + 3] = b64[ d[2] & 0x3f];
        i += 4;
        d += 3;
        div--;
    }

    switch(pad_bytes)
    {
        case 1:

            out_buf[i + 0] = b64[ ( d[0] >> 2) & 0x3f ];


            out_buf[i + 1] = b64[ ((d[0] << 4) & 0x30) | (d[1] >> 4 & 0x0f)];


            out_buf[i + 2] = b64[ ((d[1] << 2) & 0x3c) ];

            out_buf[i + 3] = '=';
            out_buf[i + 4] = 0;
            break;
        case 2:

            out_buf[i + 0] = b64[ ( d[0] >> 2) & 0x3f ];


            out_buf[i + 1] = b64[ ((d[0] << 4) & 0x30)];

            out_buf[i + 2] = '=';

            out_buf[i + 3] = '=';
            out_buf[i + 4] = 0;
            break;
        default:
            out_buf[i] = 0;
    }

    return SEC_E_OK;
}
