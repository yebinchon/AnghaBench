
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int tei_entity; int tei_instance; } ;
struct TYPE_11__ {int toi_class; int toi_type; TYPE_3__ toi_entity; int toi_id; } ;
typedef int TDI_STATUS ;
typedef TYPE_1__ TDIObjectID ;
typedef int PVOID ;
typedef int PUINT ;
typedef int PTDI_REQUEST ;
typedef int PNDIS_BUFFER ;


 int AT_ENTITY ;
 int CL_NL_ENTITY ;
 int CL_TL_ENTITY ;
 int CO_NL_ENTITY ;
 int CO_TL_ENTITY ;
 int DEBUG_INFO ;


 int GetAddressFileInfo (TYPE_1__*,int ,int ,int ) ;
 int GetContext (TYPE_3__) ;
 int IF_ENTITY ;



 int INFO_TYPE_ADDRESS_OBJECT ;
 int INFO_TYPE_PROVIDER ;




 int InfoTdiQueryEntityType (TYPE_3__,int ,int ) ;
 int InfoTdiQueryGetATInfo (TYPE_3__,int ,int ,int ) ;
 int InfoTdiQueryGetAddrTable (TYPE_3__,int ,int ) ;
 int InfoTdiQueryGetArptableMIB (TYPE_3__,int ,int ,int ) ;
 int InfoTdiQueryGetConnectionTcpTable (int ,int ,int ,int ) ;
 int InfoTdiQueryGetConnectionUdpTable (int ,int ,int ,int ) ;
 int InfoTdiQueryGetIFInfo (int ,int ,int ) ;
 int InfoTdiQueryGetIPSnmpInfo (TYPE_3__,int ,int ,int ) ;
 int InfoTdiQueryGetInterfaceMIB (TYPE_3__,int ,int ,int ) ;
 int InfoTdiQueryGetRouteTable (int ,int ,int ) ;
 int InfoTdiQueryListEntities (int ,int ) ;
 int TDI_INVALID_PARAMETER ;
 int TDI_INVALID_REQUEST ;
 int TI_DbgPrint (int ,char*) ;
 int TcpUdpClassBasic ;
 int TcpUdpClassOwner ;
 int TcpUdpClassOwnerPid ;

TDI_STATUS InfoTdiQueryInformationEx(
  PTDI_REQUEST Request,
  TDIObjectID *ID,
  PNDIS_BUFFER Buffer,
  PUINT BufferSize,
  PVOID Context)
{
    PVOID EntityListContext;

    TI_DbgPrint(DEBUG_INFO,
  ("InfoEx Req: %x %x %x!%04x:%d\n",
   ID->toi_class,
   ID->toi_type,
   ID->toi_id,
   ID->toi_entity.tei_entity,
   ID->toi_entity.tei_instance));

    switch (ID->toi_class)
    {
        case 133:
           switch (ID->toi_id)
           {
              case 136:
                 if (ID->toi_type != INFO_TYPE_PROVIDER)
                     return TDI_INVALID_PARAMETER;

                 return InfoTdiQueryListEntities(Buffer, BufferSize);

              case 135:
                 if (ID->toi_type != INFO_TYPE_PROVIDER)
                     return TDI_INVALID_PARAMETER;

                 return InfoTdiQueryEntityType(ID->toi_entity, Buffer, BufferSize);

              default:
                 return TDI_INVALID_REQUEST;
           }

        case 132:
           if (ID->toi_type == INFO_TYPE_ADDRESS_OBJECT)
           {
               if ((EntityListContext = GetContext(ID->toi_entity)))
                    return GetAddressFileInfo(ID, EntityListContext, Buffer, BufferSize);
               else
                    return TDI_INVALID_PARAMETER;
           }

           switch (ID->toi_id)
           {
              case 134:
                 if (ID->toi_type != INFO_TYPE_PROVIDER)
                     return TDI_INVALID_PARAMETER;

                 if (ID->toi_entity.tei_entity == IF_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetInterfaceMIB(ID->toi_entity, EntityListContext, Buffer, BufferSize);
                     else
                         return TDI_INVALID_PARAMETER;
                 else if (ID->toi_entity.tei_entity == CL_NL_ENTITY ||
                          ID->toi_entity.tei_entity == CO_NL_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetIPSnmpInfo(ID->toi_entity, EntityListContext, Buffer, BufferSize);
                     else
                         return TDI_INVALID_PARAMETER;
                 else if (ID->toi_entity.tei_entity == AT_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetATInfo(ID->toi_entity, EntityListContext, Buffer, BufferSize);
                     else
                         return TDI_INVALID_PARAMETER;
                 else
                     return TDI_INVALID_PARAMETER;

              case 130:
                 if (ID->toi_type != INFO_TYPE_PROVIDER)
                     return TDI_INVALID_PARAMETER;

                 if (ID->toi_entity.tei_entity == CL_NL_ENTITY ||
                     ID->toi_entity.tei_entity == CO_NL_ENTITY)
                    return InfoTdiQueryGetAddrTable(ID->toi_entity, Buffer, BufferSize);
                else if (ID->toi_entity.tei_entity == CO_TL_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetConnectionTcpTable(EntityListContext, Buffer, BufferSize, TcpUdpClassOwnerPid);
                     else
                         return TDI_INVALID_PARAMETER;
                else if (ID->toi_entity.tei_entity == CL_TL_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetConnectionUdpTable(EntityListContext, Buffer, BufferSize, TcpUdpClassOwnerPid);
                     else
                         return TDI_INVALID_PARAMETER;
                else
                    return TDI_INVALID_PARAMETER;

              case 129:
                 if (ID->toi_type != INFO_TYPE_PROVIDER)
                     return TDI_INVALID_PARAMETER;

                 if (ID->toi_entity.tei_entity == AT_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetArptableMIB(ID->toi_entity, EntityListContext,
                                                           Buffer, BufferSize);
                     else
                         return TDI_INVALID_PARAMETER;
                 else if (ID->toi_entity.tei_entity == CO_NL_ENTITY ||
                          ID->toi_entity.tei_entity == CL_NL_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetRouteTable(EntityListContext, Buffer, BufferSize);
                     else
                         return TDI_INVALID_PARAMETER;
                 else if (ID->toi_entity.tei_entity == CO_TL_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetConnectionTcpTable(EntityListContext, Buffer, BufferSize, TcpUdpClassBasic);
                     else
                         return TDI_INVALID_PARAMETER;
                 else if (ID->toi_entity.tei_entity == CL_TL_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetConnectionUdpTable(EntityListContext, Buffer, BufferSize, TcpUdpClassBasic);
                     else
                         return TDI_INVALID_PARAMETER;
                 else
                     return TDI_INVALID_PARAMETER;

              case 128:
                 if (ID->toi_type != INFO_TYPE_PROVIDER)
                     return TDI_INVALID_PARAMETER;

                 if (ID->toi_entity.tei_entity == CO_TL_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetConnectionTcpTable(EntityListContext, Buffer, BufferSize, TcpUdpClassOwner);
                     else
                         return TDI_INVALID_PARAMETER;
                 else if (ID->toi_entity.tei_entity == CL_TL_ENTITY)
                     if ((EntityListContext = GetContext(ID->toi_entity)))
                         return InfoTdiQueryGetConnectionUdpTable(EntityListContext, Buffer, BufferSize, TcpUdpClassOwner);
                     else
                         return TDI_INVALID_PARAMETER;
                 else
                     return TDI_INVALID_PARAMETER;
              default:
                 return TDI_INVALID_REQUEST;
           }

        default:
           return TDI_INVALID_REQUEST;
    }
}
