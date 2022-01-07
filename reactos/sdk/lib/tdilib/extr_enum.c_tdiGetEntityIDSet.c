
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TDIEntityID ;
typedef int PVOID ;
typedef int PDWORD ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 int ENTITY_LIST_ID ;
 int GENERIC_ENTITY ;
 int INFO_CLASS_GENERIC ;
 int INFO_TYPE_PROVIDER ;
 int tdiGetSetOfThings (int ,int ,int ,int ,int ,int ,int ,int,int *,int ) ;

NTSTATUS tdiGetEntityIDSet( HANDLE tcpFile,
                            TDIEntityID **entitySet,
                            PDWORD numEntities ) {
    NTSTATUS status = tdiGetSetOfThings( tcpFile,
                                         INFO_CLASS_GENERIC,
                                         INFO_TYPE_PROVIDER,
                                         ENTITY_LIST_ID,
                                         GENERIC_ENTITY,
                                         0,
                                         0,
                                         sizeof(TDIEntityID),
                                         (PVOID *)entitySet,
                                         numEntities );

    return status;
}
