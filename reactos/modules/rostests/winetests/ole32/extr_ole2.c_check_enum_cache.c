
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tymed; int lindex; int dwAspect; int ptd; int cfFormat; } ;
struct TYPE_6__ {scalar_t__ pAdvSink; int dwConnection; int advf; TYPE_1__ formatetc; } ;
typedef TYPE_2__ STATDATA ;
typedef int IOleCache2 ;
typedef int IEnumSTATDATA ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IEnumSTATDATA_Next (int *,int,TYPE_2__*,int *) ;
 int IEnumSTATDATA_Release (int *) ;
 scalar_t__ IOleCache2_EnumCache (int *,int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void check_enum_cache(IOleCache2 *cache, const STATDATA *expect, int num)
{
    IEnumSTATDATA *enum_stat;
    STATDATA stat;
    HRESULT hr;

    hr = IOleCache2_EnumCache( cache, &enum_stat );
    ok( hr == S_OK, "got %08x\n", hr );

    while (IEnumSTATDATA_Next(enum_stat, 1, &stat, ((void*)0)) == S_OK)
    {
        ok( stat.formatetc.cfFormat == expect->formatetc.cfFormat, "got %d expect %d\n",
            stat.formatetc.cfFormat, expect->formatetc.cfFormat );
        ok( !stat.formatetc.ptd == !expect->formatetc.ptd, "got %p expect %p\n",
            stat.formatetc.ptd, expect->formatetc.ptd );
        ok( stat.formatetc.dwAspect == expect->formatetc.dwAspect, "got %d expect %d\n",
            stat.formatetc.dwAspect, expect->formatetc.dwAspect );
        ok( stat.formatetc.lindex == expect->formatetc.lindex, "got %d expect %d\n",
            stat.formatetc.lindex, expect->formatetc.lindex );
        ok( stat.formatetc.tymed == expect->formatetc.tymed, "got %d expect %d\n",
            stat.formatetc.tymed, expect->formatetc.tymed );
        ok( stat.advf == expect->advf, "got %d expect %d\n", stat.advf, expect->advf );
        ok( stat.pAdvSink == 0, "got %p\n", stat.pAdvSink );
        ok( stat.dwConnection == expect->dwConnection, "got %d expect %d\n", stat.dwConnection, expect->dwConnection );
        num--;
        expect++;
    }

    ok( num == 0, "incorrect number. num %d\n", num );

    IEnumSTATDATA_Release( enum_stat );
}
