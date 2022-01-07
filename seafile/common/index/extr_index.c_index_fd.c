
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_3__ {scalar_t__ st_size; } ;
typedef TYPE_1__ SeafStat ;


 int MAP_PRIVATE ;
 int PROT_READ ;
 scalar_t__ SMALL_FILE_SIZE ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 int index_mem (unsigned char*,void*,scalar_t__,int,char const*) ;
 char* malloc (scalar_t__) ;
 void* mmap (int *,scalar_t__,int ,int ,int,int ) ;
 int munmap (void*,scalar_t__) ;
 scalar_t__ readn (int,char*,scalar_t__) ;
 int seaf_warning (char*,int ) ;
 int strerror (int ) ;

int index_fd(unsigned char *sha1, int fd, SeafStat *st,
             enum object_type type, const char *path)
{
    int ret;
    uint64_t size = st->st_size;

    if (!size) {
        ret = index_mem(sha1, ((void*)0), size, type, path);
    } else if (size <= SMALL_FILE_SIZE) {
        char *buf = malloc(size);
        if (size == readn(fd, buf, size)) {
            ret = index_mem(sha1, buf, size, type, path);
        } else {
            seaf_warning("short read %s\n", strerror(errno));
            ret = -1;
        }
        free(buf);
    } else {
        void *buf = mmap(((void*)0), size, PROT_READ, MAP_PRIVATE, fd, 0);
        ret = index_mem(sha1, buf, size, type, path);
        munmap(buf, size);
    }
    close(fd);
    return ret;
}
