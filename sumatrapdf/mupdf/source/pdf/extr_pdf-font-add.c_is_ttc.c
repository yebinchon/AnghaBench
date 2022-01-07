
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ fz_font ;
struct TYPE_4__ {int data; } ;


 int memcmp (int ,char*,int) ;

__attribute__((used)) static int is_ttc(fz_font *font)
{
 return !memcmp(font->buffer->data, "ttcf", 4);
}
