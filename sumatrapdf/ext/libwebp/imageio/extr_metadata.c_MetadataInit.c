
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Metadata ;


 int memset (int * const,int ,int) ;

void MetadataInit(Metadata* const metadata) {
  if (metadata == ((void*)0)) return;
  memset(metadata, 0, sizeof(*metadata));
}
