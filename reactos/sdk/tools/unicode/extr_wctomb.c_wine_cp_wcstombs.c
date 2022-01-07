
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int char_size; } ;
union cptable {int dbcs; int sbcs; TYPE_1__ info; } ;
typedef int WCHAR ;


 int get_length_dbcs (int *,int,int const*,int,char const*,int*) ;
 int get_length_sbcs (int *,int,int const*,int,int*) ;
 int wcstombs_dbcs (int *,int const*,int,char*,int) ;
 int wcstombs_dbcs_slow (int *,int,int const*,int,char*,int,char const*,int*) ;
 int wcstombs_sbcs (int *,int const*,int,char*,int) ;
 int wcstombs_sbcs_slow (int *,int,int const*,int,char*,int,char const*,int*) ;

int wine_cp_wcstombs( const union cptable *table, int flags,
                      const WCHAR *src, int srclen,
                      char *dst, int dstlen, const char *defchar, int *used )
{
    if (table->info.char_size == 1)
    {
        if (flags || defchar || used)
        {
            if (!dstlen) return get_length_sbcs( &table->sbcs, flags, src, srclen, used );
            return wcstombs_sbcs_slow( &table->sbcs, flags, src, srclen,
                                       dst, dstlen, defchar, used );
        }
        if (!dstlen) return srclen;
        return wcstombs_sbcs( &table->sbcs, src, srclen, dst, dstlen );
    }
    else
    {
        if (!dstlen) return get_length_dbcs( &table->dbcs, flags, src, srclen, defchar, used );
        if (flags || defchar || used)
            return wcstombs_dbcs_slow( &table->dbcs, flags, src, srclen,
                                       dst, dstlen, defchar, used );
        return wcstombs_dbcs( &table->dbcs, src, srclen, dst, dstlen );
    }
}
