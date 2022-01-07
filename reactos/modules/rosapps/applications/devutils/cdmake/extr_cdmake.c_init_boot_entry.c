
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int boot_id; char* bootimage; int load_segment; int boot_emu_type; } ;
typedef TYPE_1__* PBOOT_ENTRY ;
typedef int BYTE ;


 int strncpy (char*,char*,int) ;

__attribute__((used)) static void
init_boot_entry(PBOOT_ENTRY boot_entry,
                BYTE boot_emu_type, WORD load_segment,
                char* bootimage)
{
    boot_entry->boot_id = 0x88;
    boot_entry->boot_emu_type = boot_emu_type;
    boot_entry->load_segment = load_segment;

    boot_entry->bootimage[0] = '\0';
    strncpy(boot_entry->bootimage, bootimage, sizeof(boot_entry->bootimage));
    boot_entry->bootimage[sizeof(boot_entry->bootimage)-1] = '\0';
}
