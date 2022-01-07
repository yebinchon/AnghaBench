
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int DOS_FS ;
typedef int DOS_FILE ;


 int FSTART (int *,int *) ;
 int MODIFY_START (int *,int ,int *) ;
 int next_cluster (int *,int) ;
 int set_fat (int *,int,int) ;

__attribute__((used)) static void truncate_file(DOS_FS * fs, DOS_FILE * file, uint32_t clusters)
{
    int deleting;
    uint32_t walk, next;

    walk = FSTART(file, fs);
    if ((deleting = !clusters))
 MODIFY_START(file, 0, fs);
    while (walk > 0 && walk != -1) {
 next = next_cluster(fs, walk);
 if (deleting)
     set_fat(fs, walk, 0);
 else if ((deleting = !--clusters))
     set_fat(fs, walk, -1);
 walk = next;
    }
}
