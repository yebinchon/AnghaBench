
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sd_id128_t ;
struct TYPE_5__ {int fd; int boot_id; struct TYPE_5__* header; int machine_id; } ;
typedef TYPE_1__ JournalFile ;


 int ENOENT ;
 int ENOMEDIUM ;
 scalar_t__ IN_SET (int,int ,int ) ;
 int assert (TYPE_1__*) ;
 int fsync (int ) ;
 int fsync_directory_of_file (int ) ;
 int journal_file_set_online (TYPE_1__*) ;
 int sd_id128_get_boot (int *) ;
 int sd_id128_get_machine (int *) ;
 int zero (int ) ;

__attribute__((used)) static int journal_file_refresh_header(JournalFile *f) {
        sd_id128_t boot_id;
        int r;

        assert(f);
        assert(f->header);

        r = sd_id128_get_machine(&f->header->machine_id);
        if (IN_SET(r, -ENOENT, -ENOMEDIUM))

                zero(f->header->machine_id);
        else if (r < 0)
                return r;

        r = sd_id128_get_boot(&boot_id);
        if (r < 0)
                return r;

        f->header->boot_id = boot_id;

        r = journal_file_set_online(f);


        (void) fsync(f->fd);


        (void) fsync_directory_of_file(f->fd);

        return r;
}
