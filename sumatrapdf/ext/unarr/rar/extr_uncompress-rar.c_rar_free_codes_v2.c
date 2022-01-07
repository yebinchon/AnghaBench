
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_archive_rar_uncomp_v2 {int * audiocode; int lengthcode; int offsetcode; int maincode; } ;


 int rar_free_code (int *) ;

__attribute__((used)) static void rar_free_codes_v2(struct ar_archive_rar_uncomp_v2 *uncomp_v2)
{
    int i;
    rar_free_code(&uncomp_v2->maincode);
    rar_free_code(&uncomp_v2->offsetcode);
    rar_free_code(&uncomp_v2->lengthcode);
    for (i = 0; i < 4; i++)
        rar_free_code(&uncomp_v2->audiocode[i]);
}
