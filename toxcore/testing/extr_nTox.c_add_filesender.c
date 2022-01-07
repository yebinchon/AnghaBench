
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int Tox ;
struct TYPE_2__ {int filenumber; int friendnum; int * file; } ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int TOX_FILE_KIND_DATA ;
 TYPE_1__* file_senders ;
 int * fopen (char*,char*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 size_t numfilesenders ;
 int strlen (char*) ;
 int tox_file_send (int *,int ,int ,int ,int ,int *,int ,int ) ;

uint32_t add_filesender(Tox *m, uint16_t friendnum, char *filename)
{
    FILE *tempfile = fopen(filename, "rb");

    if (tempfile == 0)
        return -1;

    fseek(tempfile, 0, SEEK_END);
    uint64_t filesize = ftell(tempfile);
    fseek(tempfile, 0, SEEK_SET);
    uint32_t filenum = tox_file_send(m, friendnum, TOX_FILE_KIND_DATA, filesize, 0, (uint8_t *)filename,
                                     strlen(filename), 0);

    if (filenum == -1)
        return -1;

    file_senders[numfilesenders].file = tempfile;
    file_senders[numfilesenders].friendnum = friendnum;
    file_senders[numfilesenders].filenumber = filenum;
    ++numfilesenders;
    return filenum;
}
