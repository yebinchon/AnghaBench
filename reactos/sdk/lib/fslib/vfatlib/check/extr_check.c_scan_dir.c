
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_19__ {struct TYPE_19__* first; int offset; } ;
struct TYPE_18__ {int cluster_size; } ;
typedef int FDSC ;
typedef TYPE_1__ DOS_FS ;
typedef TYPE_2__ DOS_FILE ;
typedef int DIR_ENT ;


 int FSTART (TYPE_2__*,TYPE_1__*) ;
 int add_file (TYPE_1__*,TYPE_2__***,TYPE_2__*,scalar_t__,int **) ;
 scalar_t__ check_dir (TYPE_1__*,TYPE_2__**,int ) ;
 scalar_t__ check_files (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ cluster_start (TYPE_1__*,int) ;
 int lfn_check_orphaned () ;
 int new_dir () ;
 int next_cluster (TYPE_1__*,int) ;
 int subdirs (TYPE_1__*,TYPE_2__*,int **) ;

__attribute__((used)) static int scan_dir(DOS_FS * fs, DOS_FILE * this, FDSC ** cp)
{
    DOS_FILE **chain;
    int i;
    uint32_t clu_num;

    chain = &this->first;
    i = 0;
    clu_num = FSTART(this, fs);
    new_dir();
    while (clu_num > 0 && clu_num != -1) {
 add_file(fs, &chain, this,
   cluster_start(fs, clu_num) + (i % fs->cluster_size), cp);
 i += sizeof(DIR_ENT);
 if (!(i % fs->cluster_size))
     if ((clu_num = next_cluster(fs, clu_num)) == 0 || clu_num == -1)
  break;
    }
    lfn_check_orphaned();
    if (check_dir(fs, &this->first, this->offset))
 return 0;
    if (check_files(fs, this->first))
 return 1;
    return subdirs(fs, this, cp);
}
