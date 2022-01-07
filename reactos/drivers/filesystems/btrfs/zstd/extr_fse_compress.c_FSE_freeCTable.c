
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FSE_CTable ;


 int ExFreePool (int *) ;

void FSE_freeCTable (FSE_CTable* ct) { ExFreePool(ct); }
