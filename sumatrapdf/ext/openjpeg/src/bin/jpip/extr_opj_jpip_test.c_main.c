
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int index_t ;


 int O_RDONLY ;
 int close (int) ;
 int destroy_index (int **) ;
 int fprintf (int ,char*,...) ;
 int * get_index_from_JP2file (int) ;
 int open (char*,int ) ;
 int output_index (int *) ;
 int stderr ;

int
main(int argc, char *argv[])
{
    int fd;
    index_t *jp2idx;
    if (argc < 2) {
        return 1;
    }

    if ((fd = open(argv[1], O_RDONLY)) == -1) {
        fprintf(stderr, "Error: Target %s not found\n", argv[1]);
        return -1;
    }

    if (!(jp2idx = get_index_from_JP2file(fd))) {
        fprintf(stderr, "JP2 file broken\n");
        return -1;
    }

    output_index(jp2idx);
    destroy_index(&jp2idx);
    close(fd);

    return 0;
}
