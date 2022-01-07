
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int inquiry_buf ;


 int EIO ;
 int disk_identify_command (int,int*,int) ;
 int disk_identify_packet_device_command (int,int*,int) ;
 int disk_scsi_inquiry_command (int,int*,int) ;
 int errno ;
 int memzero (int*,int) ;

__attribute__((used)) static int disk_identify(int fd,
                         uint8_t out_identify[512],
                         int *out_is_packet_device) {
        int ret;
        uint8_t inquiry_buf[36];
        int peripheral_device_type;
        int all_nul_bytes;
        int n;
        int is_packet_device = 0;


        memzero(out_identify, 512);
        ret = disk_scsi_inquiry_command (fd, inquiry_buf, sizeof (inquiry_buf));
        if (ret != 0)
                goto out;


        peripheral_device_type = inquiry_buf[0] & 0x1f;
        if (peripheral_device_type == 0x05)
          {
            is_packet_device = 1;
            ret = disk_identify_packet_device_command(fd, out_identify, 512);
            goto check_nul_bytes;
          }
        if (peripheral_device_type != 0x00) {
                ret = -1;
                errno = EIO;
                goto out;
        }


        ret = disk_identify_command(fd, out_identify, 512);
        if (ret != 0)
                goto out;

 check_nul_bytes:

        all_nul_bytes = 1;
        for (n = 0; n < 512; n++) {
                if (out_identify[n] != '\0') {
                        all_nul_bytes = 0;
                        break;
                }
        }

        if (all_nul_bytes) {
                ret = -1;
                errno = EIO;
                goto out;
        }

out:
        if (out_is_packet_device)
                *out_is_packet_device = is_packet_device;
        return ret;
}
