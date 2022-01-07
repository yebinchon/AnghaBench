
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 scalar_t__ GlobalBufferPool ;
 scalar_t__ GlobalPacketPool ;
 int NdisFreeBufferPool (scalar_t__) ;
 int NdisFreePacketPool (scalar_t__) ;

VOID CloseNdisPools() {
    if( GlobalPacketPool ) NdisFreePacketPool( GlobalPacketPool );
    if( GlobalBufferPool ) NdisFreeBufferPool( GlobalBufferPool );
}
