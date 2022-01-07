
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sg_io_v4 {char guard; int request_len; uintptr_t request; int max_response_len; uintptr_t response; size_t din_xfer_len; uintptr_t din_xferp; char interface_id; unsigned char* cmdp; int cmd_len; void* dxferp; size_t dxfer_len; int* sbp; int mx_sb_len; int timeout; int dxfer_direction; int subprotocol; int protocol; } ;
struct sg_io_hdr {char guard; int request_len; uintptr_t request; int max_response_len; uintptr_t response; size_t din_xfer_len; uintptr_t din_xferp; char interface_id; unsigned char* cmdp; int cmd_len; void* dxferp; size_t dxfer_len; int* sbp; int mx_sb_len; int timeout; int dxfer_direction; int subprotocol; int protocol; } ;
typedef int sense ;
typedef int cdb ;


 int BSG_PROTOCOL_SCSI ;
 int BSG_SUB_PROTOCOL_SCSI_CMD ;
 int COMMAND_TIMEOUT_MSEC ;
 scalar_t__ EINVAL ;
 scalar_t__ EIO ;
 int SG_DXFER_FROM_DEV ;
 int SG_IO ;
 scalar_t__ errno ;
 int ioctl (int,int ,struct sg_io_v4*) ;

__attribute__((used)) static int disk_identify_packet_device_command(
                int fd,
                void *buf,
                size_t buf_len) {

        uint8_t cdb[16] = {







                [0] = 0x85,
                [1] = 4 << 1,
                [2] = 0x2e,
                [3] = 0,
                [4] = 0,
                [5] = 0,
                [6] = 1,
                [7] = 0,
                [8] = 0,
                [9] = 0,
                [10] = 0,
                [11] = 0,
                [12] = 0,
                [13] = 0,
                [14] = 0xA1,
                [15] = 0,
        };
        uint8_t sense[32] = {};
        uint8_t *desc = sense + 8;
        struct sg_io_v4 io_v4 = {
                .guard = 'Q',
                .protocol = BSG_PROTOCOL_SCSI,
                .subprotocol = BSG_SUB_PROTOCOL_SCSI_CMD,
                .request_len = sizeof (cdb),
                .request = (uintptr_t) cdb,
                .max_response_len = sizeof (sense),
                .response = (uintptr_t) sense,
                .din_xfer_len = buf_len,
                .din_xferp = (uintptr_t) buf,
                .timeout = COMMAND_TIMEOUT_MSEC,
        };
        int ret;

        ret = ioctl(fd, SG_IO, &io_v4);
        if (ret != 0) {

                if (errno == EINVAL) {
                        struct sg_io_hdr io_hdr = {
                                .interface_id = 'S',
                                .cmdp = (unsigned char*) cdb,
                                .cmd_len = sizeof (cdb),
                                .dxferp = buf,
                                .dxfer_len = buf_len,
                                .sbp = sense,
                                .mx_sb_len = sizeof (sense),
                                .dxfer_direction = SG_DXFER_FROM_DEV,
                                .timeout = COMMAND_TIMEOUT_MSEC,
                        };

                        ret = ioctl(fd, SG_IO, &io_hdr);
                        if (ret != 0)
                                return ret;
                } else
                        return ret;
        }

        if (!(sense[0] == 0x72 && desc[0] == 0x9 && desc[1] == 0x0c)) {
                errno = EIO;
                return -1;
        }

        return 0;
}
