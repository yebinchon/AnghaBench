
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int gc; } ;


 int bhyvegc_init (int ,int ,void*) ;
 TYPE_1__ console ;

void
console_init(uint16_t w, uint16_t h, void *fbaddr)
{
 console.gc = bhyvegc_init(w, h, fbaddr);
}
