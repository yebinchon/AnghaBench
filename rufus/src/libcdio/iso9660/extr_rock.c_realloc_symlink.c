
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int i_symlink; char* psz_symlink; int i_symlink_max; } ;
struct TYPE_5__ {TYPE_1__ rr; } ;
typedef TYPE_2__ iso9660_stat_t ;


 scalar_t__ calloc (int,int const) ;
 int free (char*) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static bool
realloc_symlink( iso9660_stat_t *p_stat, uint8_t i_grow)
{
  if (!p_stat->rr.i_symlink) {
    const uint16_t i_max = 2*i_grow+1;
    p_stat->rr.psz_symlink = (char *) calloc(1, i_max);
    p_stat->rr.i_symlink_max = i_max;
    return (((void*)0) != p_stat->rr.psz_symlink);
  } else {
    unsigned int i_needed = p_stat->rr.i_symlink + i_grow ;
    if ( i_needed <= p_stat->rr.i_symlink_max)
      return 1;
    else {
      char * psz_newsymlink = (char *) calloc(1, 2*i_needed);
      if (!psz_newsymlink) return 0;
      p_stat->rr.i_symlink_max = 2*i_needed;
      memcpy(psz_newsymlink, p_stat->rr.psz_symlink, p_stat->rr.i_symlink);
      free(p_stat->rr.psz_symlink);
      p_stat->rr.psz_symlink = psz_newsymlink;
      return 1;
    }
  }
}
