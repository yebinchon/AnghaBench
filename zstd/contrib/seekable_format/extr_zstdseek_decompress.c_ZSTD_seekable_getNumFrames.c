
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tableLen; } ;
struct TYPE_5__ {TYPE_1__ seekTable; } ;
typedef TYPE_2__ ZSTD_seekable ;


 scalar_t__ UINT_MAX ;
 int assert (int) ;

unsigned ZSTD_seekable_getNumFrames(ZSTD_seekable* const zs)
{
    assert(zs->seekTable.tableLen <= UINT_MAX);
    return (unsigned)zs->seekTable.tableLen;
}
