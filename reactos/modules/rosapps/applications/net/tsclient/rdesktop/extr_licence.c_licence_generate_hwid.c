
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int licence_hostname; } ;
typedef TYPE_1__ RDPCLIENT ;


 scalar_t__ LICENCE_HWID_SIZE ;
 int buf_out_uint32 (int *,int) ;
 int strncpy (char*,int ,scalar_t__) ;

__attribute__((used)) static void
licence_generate_hwid(RDPCLIENT * This, uint8 * hwid)
{
 buf_out_uint32(hwid, 2);
 strncpy((char *) (hwid + 4), This->licence_hostname, LICENCE_HWID_SIZE - 4);
}
