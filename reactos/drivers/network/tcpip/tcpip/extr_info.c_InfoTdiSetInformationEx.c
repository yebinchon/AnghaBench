
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int tei_entity; } ;
struct TYPE_8__ {int Connection; } ;
struct TYPE_7__ {int toi_class; int const toi_type; TYPE_6__ toi_entity; int toi_id; } ;
typedef int TDI_STATUS ;
typedef TYPE_1__ TDIObjectID ;
typedef void* PVOID ;
typedef int PTDI_REQUEST ;
typedef TYPE_2__* PADDRESS_FILE ;


 int AT_ENTITY ;
 int CL_NL_ENTITY ;
 int CO_NL_ENTITY ;
 int DbgPrint (char*,int) ;
 void* GetContext (TYPE_6__) ;





 int InfoTdiSetArptableMIB (void*,void*,int ) ;
 int InfoTdiSetRoute (void*,void*,int ) ;
 int SetAddressFileInfo (TYPE_1__*,void*,void*,int ) ;
 int SetConnectionInfo (TYPE_1__*,int ,void*,int ) ;
 int TDI_INVALID_PARAMETER ;
 int TDI_INVALID_REQUEST ;

TDI_STATUS InfoTdiSetInformationEx
(PTDI_REQUEST Request,
 TDIObjectID *ID,
 PVOID Buffer,
 UINT BufferSize)
{
    PVOID EntityListContext;

    switch (ID->toi_class)
    {
        case 132:
        {
            switch (ID->toi_type)
            {
                case 131:
                {
                    if ((EntityListContext = GetContext(ID->toi_entity)))
                        return SetAddressFileInfo(ID, EntityListContext, Buffer, BufferSize);
                    else
                        return TDI_INVALID_PARAMETER;
                }
                case 130:
                {
                    PADDRESS_FILE AddressFile = GetContext(ID->toi_entity);
                    if (AddressFile == ((void*)0))
                        return TDI_INVALID_PARAMETER;
                    return SetConnectionInfo(ID, AddressFile->Connection, Buffer, BufferSize);
                }
                case 129:
                {
                    switch (ID->toi_id)
                    {
                        case 128:
                            if (ID->toi_type != 129)
                                return TDI_INVALID_PARAMETER;

                            if (ID->toi_entity.tei_entity == AT_ENTITY)
                                if ((EntityListContext = GetContext(ID->toi_entity)))
                                    return InfoTdiSetArptableMIB(EntityListContext, Buffer,
                                        BufferSize);
                                else
                                    return TDI_INVALID_PARAMETER;
                            else if (ID->toi_entity.tei_entity == CL_NL_ENTITY
                                || ID->toi_entity.tei_entity == CO_NL_ENTITY)
                                if ((EntityListContext = GetContext(ID->toi_entity)))
                                    return InfoTdiSetRoute(EntityListContext, Buffer, BufferSize);
                                else
                                    return TDI_INVALID_PARAMETER;
                            else
                                return TDI_INVALID_PARAMETER;

                        default:
                            return TDI_INVALID_REQUEST;
                    }
                }
                default:
                    DbgPrint("TCPIP: IOCTL_TCP_SET_INFORMATION_EX - Unrecognized information type for INFO_CLASS_PROTOCOL: %#x.\n", ID->toi_type);
                    return TDI_INVALID_PARAMETER;
            }
            break;
        }
        default:
            DbgPrint("TCPIP: IOCTL_TCP_SET_INFORMATION_EX - Unrecognized information class %#x.\n", ID->toi_class);
            return TDI_INVALID_REQUEST;
    }
}
