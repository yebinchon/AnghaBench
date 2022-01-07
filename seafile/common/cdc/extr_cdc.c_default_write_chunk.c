
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int chksum_str ;
struct TYPE_3__ {int len; int block_buf; int checksum; } ;
typedef TYPE_1__ CDCDescriptor ;


 int CHECKSUM_LENGTH ;
 int NAME_MAX_SZ ;
 int O_BINARY ;
 int O_CREAT ;
 int O_RDWR ;
 int close (int) ;
 int g_open (char*,int,int) ;
 int memset (char*,int ,int) ;
 int rawdata_to_hex (int ,char*,int) ;
 int snprintf (char*,int,char*,char*) ;
 int writen (int,int ,int ) ;

__attribute__((used)) static int default_write_chunk (CDCDescriptor *chunk_descr)
{
    char filename[NAME_MAX_SZ];
    char chksum_str[CHECKSUM_LENGTH *2 + 1];
    int fd_chunk, ret;

    memset(chksum_str, 0, sizeof(chksum_str));
    rawdata_to_hex (chunk_descr->checksum, chksum_str, CHECKSUM_LENGTH);
    snprintf (filename, NAME_MAX_SZ, "./%s", chksum_str);
    fd_chunk = g_open (filename, O_RDWR | O_CREAT | O_BINARY, 0644);
    if (fd_chunk < 0)
        return -1;

    ret = writen (fd_chunk, chunk_descr->block_buf, chunk_descr->len);
    close (fd_chunk);
    return ret;
}
