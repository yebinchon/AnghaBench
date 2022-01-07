
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; } ;
struct TYPE_5__ {TYPE_1__ pGuidTab; } ;
typedef TYPE_2__ MSFT_SegDir ;
typedef int GUID ;


 int tlb_lseek (int,scalar_t__) ;
 int tlb_read (int,int *,int) ;

__attribute__((used)) static void msft_read_guid(int fd, MSFT_SegDir *segdir, int offset, GUID *guid)
{
    tlb_lseek(fd, segdir->pGuidTab.offset+offset);
    tlb_read(fd, guid, sizeof(GUID));
}
