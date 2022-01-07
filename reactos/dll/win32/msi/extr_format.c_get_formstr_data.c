
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * deformatted; } ;
struct TYPE_5__ {size_t n; } ;
typedef int * LPCWSTR ;
typedef TYPE_1__ FORMSTR ;
typedef TYPE_2__ FORMAT ;



__attribute__((used)) static LPCWSTR get_formstr_data(FORMAT *format, FORMSTR *str)
{
    return &format->deformatted[str->n];
}
