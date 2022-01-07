
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int UCHAR ;
struct TYPE_6__ {int* astatLen; TYPE_1__* astat; scalar_t__ gotResponse; } ;
struct TYPE_5__ {int name_flags; int name; } ;
struct TYPE_4__ {int name_count; int adapter_type; int adapter_address; } ;
typedef int* PUCHAR ;
typedef TYPE_2__* PNAME_BUFFER ;
typedef TYPE_3__ NetBTNodeQueryData ;
typedef int BOOL ;
typedef int ADAPTER_STATUS ;


 int DEREGISTERED ;
 int DUPLICATE ;
 int FALSE ;
 int GROUP_NAME ;
 int NCBNAMSZ ;
 int REGISTERED ;
 int REGISTERING ;
 scalar_t__ TRUE ;
 int memcpy (int ,int*,int) ;
 int min (int,int) ;

__attribute__((used)) static BOOL NetBTNodeStatusAnswerCallback(void *pVoid, WORD answerCount,
 WORD answerIndex, PUCHAR rData, WORD rLen)
{
    NetBTNodeQueryData *data = pVoid;

    if (data && !data->gotResponse && rData && rLen >= 1)
    {

        if (rLen >= rData[0] * (NCBNAMSZ + 2))
        {
            WORD i;
            PUCHAR src;
            PNAME_BUFFER dst;

            data->gotResponse = TRUE;
            data->astat->name_count = rData[0];
            for (i = 0, src = rData + 1,
             dst = (PNAME_BUFFER)((PUCHAR)data->astat +
              sizeof(ADAPTER_STATUS));
             i < data->astat->name_count && src - rData < rLen &&
             (PUCHAR)dst - (PUCHAR)data->astat < data->astatLen;
             i++, dst++, src += NCBNAMSZ + 2)
            {
                UCHAR flags = *(src + NCBNAMSZ);

                memcpy(dst->name, src, NCBNAMSZ);



                dst->name_flags = REGISTERING;
                if (flags & 0x80)
                    dst->name_flags |= GROUP_NAME;
                if (flags & 0x10)
                    dst->name_flags |= DEREGISTERED;
                if (flags & 0x08)
                    dst->name_flags |= DUPLICATE;
                if (dst->name_flags == REGISTERING)
                    dst->name_flags = REGISTERED;
            }

            data->astat->adapter_type = 0xfe;
            if (src - rData < rLen)
                memcpy(data->astat->adapter_address, src,
                 min(rLen - (src - rData), 6));
        }
    }
    return FALSE;
}
