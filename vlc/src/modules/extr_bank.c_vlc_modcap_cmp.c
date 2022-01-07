
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ vlc_modcap_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int vlc_modcap_cmp(const void *a, const void *b)
{
    const vlc_modcap_t *capa = a, *capb = b;
    return strcmp(capa->name, capb->name);
}
