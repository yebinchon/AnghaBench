
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ssize_t ;
typedef int key ;


 int BLOCK_SIZE ;
 int O_RDONLY ;
 int* ikey ;
 int* okey ;
 scalar_t__ read (int,int*,int) ;
 int vlc_close (int) ;
 int vlc_open (char*,int ) ;

__attribute__((used)) static void vlc_rand_init (void)
{
    uint8_t key[BLOCK_SIZE];


    int fd = vlc_open ("/dev/urandom", O_RDONLY);
    if (fd == -1)
        return;

    for (size_t i = 0; i < sizeof (key);)
    {
         ssize_t val = read (fd, key + i, sizeof (key) - i);
         if (val > 0)
             i += val;
    }


    for (size_t i = 0; i < sizeof (key); i++)
    {
        okey[i] = key[i] ^ 0x5c;
        ikey[i] = key[i] ^ 0x36;
    }

    vlc_close (fd);
}
